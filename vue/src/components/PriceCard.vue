<template>
    <div class="card">
        <div class="card-header">{{ title }}</div>
        <div class="card-body">
            <h2 class="card-title">{{ priceString }}円<small class="text-muted per-month"> /月</small></h2>
            <p class="card-text">{{ text }}</p>
            <a href="#" class="btn btn-primary w-50" @click="$emit('card-click')">購入</a>
        </div>
    </div>
</template>

<script>
export default {
  name: 'price-card',
  props: {
    title: String,
    price: Number,
    text: String,
  },
  computed: {
    priceString() {
      return this.price.toLocaleString("ja-JP");
    } 
  },
}
</script>

<style scoped>
    .per-month {
        font-size: 1.2rem;
    }
    .card {
      border-style: solid;
      border-radius: 4%;
      border-width: 2px;
      border-color: rgb(140, 166, 253);
    }
    .card-header {
      background-color: rgb(140, 166, 253);
      color: white;
    }
</style>
