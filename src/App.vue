<script lang="ts" setup>
import { useI18n } from '@/stores/counter'
const i18n = useI18n()
</script>

<template>
  <el-config-provider :locale="i18n.locale">
    <BaseHeader />
    <div class="">
      <BaseSide />
      <div>
        <RouterView />
      </div>
    </div>
  </el-config-provider>
</template>
