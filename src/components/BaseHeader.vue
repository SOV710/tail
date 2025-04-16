<script lang="ts" setup>
import { isDark, toggleDark } from '~/composables'

import { Moon, Sunny } from '@element-plus/icons-vue'

const input = ref('')
</script>

<template>
  <el-menu class="el-menu-demo" mode="horizontal" :ellipsis="false" router>
    <el-menu-item index="/">
      <div class="flex items-center justify-center gap-2">
        <span>Rhythm Fusion</span>
      </div>
    </el-menu-item>

    <!-- search -->
    <div @keydown.stop>
      <el-input
        v-model="input"
        placeholder="Search..."
        clearable
        size="large"
        class="p-2.5"
        @keydown.stop
      />
    </div>

    <!--other item-->
    <el-menu-item index="3" disabled> Search </el-menu-item>
    <el-menu-item index="4"> Suggest </el-menu-item>

    <el-menu-item h="full" @click="toggleDark()">
      <el-button type="text" class="w-full" style="height: var(--el-menu-item-height)">
        <template #icon>
          <el-icon class="inline-flex">
            <component :is="isDark ? Moon : Sunny" />
          </el-icon>
        </template>
      </el-button>
    </el-menu-item>

    <!-- Submenu -->
    <el-sub-menu index="2">
      <template #title> <el-avatar src="@/assets/avatar/default.png" /> </template>
      <el-menu-item index="2-1"> item one </el-menu-item>
      <el-menu-item index="2-2"> item two </el-menu-item>
      <el-menu-item index="2-3"> item three </el-menu-item>
      <el-sub-menu index="2-4">
        <template #title> item four </template>
        <el-menu-item index="2-4-1"> item one </el-menu-item>
        <el-menu-item index="2-4-2"> item two </el-menu-item>
        <el-menu-item index="2-4-3"> item three </el-menu-item>
      </el-sub-menu>
    </el-sub-menu>
  </el-menu>
</template>

<style lang="scss">
.el-menu-demo {
  &.el-menu--horizontal > .el-menu-item:nth-child(1) {
    margin-right: auto;
  }
}
</style>
