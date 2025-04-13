<script lang="ts" setup>
import { useI18n } from '@/composables'
const { locale } = useI18n()
</script>

<template>
  <el-config-provider :locale="locale">
    <BaseHeader />
    <div class="main-container flex">
      <BaseSide />
      <div>
        <RouterView />
      </div>
    </div>
  </el-config-provider>
</template>

<style>
#app {
  text-align: center;
  color: var(--ep-text-color-primary);
}

.main-container {
  height: calc(100vh - var(--ep-menu-item-height) - 4px);
}
</style>
