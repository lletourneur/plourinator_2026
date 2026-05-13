<template>
  <div>
    <div v-if="isLoading" class="loader-overlay">
      <LoaderCircle class="loader mx-auto"/>
    </div>
    <div v-else class="[&_iframe]:shadow-[10px_10px_20px_0_rgba(0,0,0,0.3)]">
      <a title="Vente de billets en ligne" href="https://www.billetweb.fr/shop.php?event=plourinator1"
         class="shop_frame" target="_blank" data-src="https://www.billetweb.fr/shop.php?event=plourinator1"
         data-max-width="100%" data-initial-height="600" data-scrolling="no" data-id="plourinator1" data-resize="1">
        Vente de billets en ligne
      </a>
    </div>
  </div>
</template>

<script setup>
import { ref, watch, onMounted, onBeforeUnmount } from 'vue';
import { LoaderCircle } from 'lucide-vue-next';

const props = defineProps({
  isOpen: {
    type: Boolean,
    required: true
  }
});

const isLoading = ref(true);

const loadBilletWebScript = () => {
  if (!document.querySelector('script[src="https://www.billetweb.fr/js/export.js"]')) {
    const script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://www.billetweb.fr/js/export.js';
    script.onload = () => {
      if (typeof BilletWebExport === 'function') {
        BilletWebExport();
      }
    };
    document.body.appendChild(script);
    return script;
  } else {
    if (typeof BilletWebExport === 'function') {
      BilletWebExport();
    }
  }
  return null;
};

let scriptElement = null;

onMounted(() => {
  isLoading.value = true;

  watch(() => props.isOpen, (newVal) => {
    if (newVal) {
      scriptElement = loadBilletWebScript();
      isLoading.value = false;
    }
  }, { immediate: true });
});

onBeforeUnmount(() => {
  if (scriptElement) {
    document.body.removeChild(scriptElement);
    scriptElement = null;
  }
});
</script>

<style scoped>
.loader {
  width: 50px;
  height: 100px;
  color: #172F4C;
  animation: spin 1500ms linear infinite;
}

@keyframes spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>
