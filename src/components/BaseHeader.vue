<script lang="ts" setup>
import { toggleDark, useI18n } from '@/composables'

const { toggleI18n } = useI18n()

import { Language } from '@element-plus/icons-vue'
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

    <!-- 中右: 夜间模式按钮 & 语言切换 -->
    <el-menu-item-group class="flex items-center">
      <!-- 夜间模式按钮 -->
      <el-menu-item class="mx-2">
        <el-button class="btn" style="height: var(--el-menu-item-height)" @click="toggleDark">
          <i inline-flex i="dark:ep-moon ep-sunny" />
        </el-button>
      </el-menu-item>
      <!-- 语言切换子菜单 -->
      <el-sub-menu class="mx-2" @click="toggleI18n">
        <template #title>
          <Language />
        </template>
      </el-sub-menu>
    </el-menu-item-group>

    <!-- 右侧: 用户头像菜单 -->
    <el-sub-menu index="/user" class="mx-2">
      <template #title>
        <el-avatar src="/avatar.jpg" />
      </template>
      <el-menu-item index="/profile">Profile</el-menu-item>
      <el-menu-item index="/settings">Settings</el-menu-item>
      <el-menu-item index="/logout">Logout</el-menu-item>
    </el-sub-menu>
  </el-menu>
</template>
