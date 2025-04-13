<script lang="ts" setup>
import { useI18n } from '@/stores/counter'
const i18n = useI18n()
</script>

<template>
  <div>
    <el-config-provider :locale="i18n.locale">
      <el-table mb-1 :data="[]" />
      <el-pagination :total="100" />
    </el-config-provider>
  </div>
</template>
