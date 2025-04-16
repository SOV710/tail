<template>
  <el-main
    class="m-0 p-0 bg-gradient-to-b dark:from-[#212121] dark:to-[#121212] min-h-screen from-[#f2f2f2] to-[#e5e5e5]"
  >
    <el-menu
      class="m-0 flex flex-wrap items-center justify-left text-left"
      style="background-color: rgba(255, 255, 255, 0)"
      :ellipsis="false"
      router
    >
      <el-menu-item index="/" class="p-0 m-0">
        <el-button round size="large"> Home </el-button>
      </el-menu-item>
      <el-menu-item index="/music/" class="p-0 m-0">
        <el-button round size="large"> Music </el-button>
      </el-menu-item>
    </el-menu>
  </el-main>
</template>
