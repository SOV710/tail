<script lang="ts" setup>
import { toggleDark, useI18n } from '@/composables'
const { toggleI18n } = useI18n()
</script>

<template>
  <el-menu router default-active="/" class="flex justify-between items-center p-4 bg-white">
    <!-- 左侧: Logo -->
    <el-menu-item index="/" class="cursor-pointer">
      <img src="@/assets/logo.svg" alt="Logo" class="h-8 w-auto" />
    </el-menu-item>

    <!-- 中间: 搜索框 -->
    <el-menu-item class="flex-1 mx-4">
      <el-input placeholder="Search..." class="w-full" />
    </el-menu-item>

    <!-- 夜间模式按钮 -->
    <el-menu-item h="full" @click="toggleDark()">
      <button
        class="w-full cursor-pointer border-none bg-transparent"
        style="height: var(--el-menu-item-height)"
      >
        <i inline-flex i="dark:el-moon el-sunny" />
      </button>
    </el-menu-item>
    <!-- 语言切换 -->
    <el-menu-item h="full" @click="toggleI18n()">
      <button
        class="w-full cursor-pointer border-none bg-transparent"
        style="height: var(--el-menu-item-height)"
      >
        <div class="i-carbon-ibm-watson-language-translator" />
      </button>
    </el-menu-item>

    <!-- 右侧: 用户头像菜单 -->
    <el-sub-menu class="mx-2">
      <template #title>
        <el-avatar src="@/assets/avatar/default.png" />
      </template>
      <el-menu-item index="/profile">Profile</el-menu-item>
      <el-menu-item index="/settings">Settings</el-menu-item>
      <el-menu-item index="/logout">Logout</el-menu-item>
    </el-sub-menu>
  </el-menu>
</template>
