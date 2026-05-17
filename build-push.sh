#!/bin/bash

set -e

LOG_FILE="${BASH_SOURCE[0]%.*}.log"
exec > >(tee "$LOG_FILE") 2>&1
echo "Log: $LOG_FILE"

trap 'echo ""; echo "ERREUR — voir $LOG_FILE"; read' ERR

read -p "Utiliser sudo pour les commandes docker ? (o/N) : " use_sudo
DOCKER_CMD=$([[ ${use_sudo:-N} =~ ^[Oo]$ ]] && echo "sudo docker" || echo "docker")

REGISTRY="registry.jolakk.fr"
TAG="${1:-latest}"
BUMP="${2:-patch}"

IMAGE="${REGISTRY}/plourinator"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KUSTOMIZATION="${SCRIPT_DIR}/k8s/overlays/prod/kustomization.yaml"

if [[ "$TAG" == "latest" ]]; then
    CURRENT=$(grep 'newTag:' "$KUSTOMIZATION" | head -1 | awk '{print $2}')

    if [[ ! "$CURRENT" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        CURRENT="0.0.0"
    fi

    IFS='.' read -r MAJOR MINOR PATCH <<< "$CURRENT"

    case "$BUMP" in
        major) MAJOR=$((MAJOR + 1)); MINOR=0; PATCH=0 ;;
        minor) MINOR=$((MINOR + 1)); PATCH=0 ;;
        patch) PATCH=$((PATCH + 1)) ;;
        *) echo "BUMP invalide : '$BUMP' (valeurs acceptées : major / minor / patch)"; exit 1 ;;
    esac

    TAG="${MAJOR}.${MINOR}.${PATCH}"
    echo "==> Version bump (${BUMP}): ${CURRENT} → ${TAG}"
fi

sed -i "/registry.jolakk.fr\/plourinator/{n;s/newTag: .*/newTag: ${TAG}/}" "$KUSTOMIZATION"
echo "==> Kustomization mise à jour : ${KUSTOMIZATION} (tag: ${TAG})"

echo ""
echo "==> [plourinator] Build..."
$DOCKER_CMD build --provenance=false -t "${IMAGE}:${TAG}" -f "${SCRIPT_DIR}/Dockerfile" "${SCRIPT_DIR}"

echo "==> [plourinator] Push..."
$DOCKER_CMD push "${IMAGE}:${TAG}"

echo ""
echo "✓ Pushé sur ${REGISTRY} (tag: ${TAG})"
