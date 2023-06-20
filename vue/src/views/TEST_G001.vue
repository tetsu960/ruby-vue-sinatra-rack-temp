<template>
    <div class="row">
        <div class="col"><h2>利用料金のご案内</h2></div>
    </div>
    <div class="row pt-3 justify-content-center">
        <div class="col-3">
            <PriceCard title="フリープラン" :price="0" text="非営利で使用することができるプランです。" @card-click="plan(1)"></PriceCard>
        </div>
        <div class="col-3">
            <PriceCard title="有料プラン" :price="1500" text="仕事に必要な機能が備わった充実したサービスです。" @card-click="plan(2)"></PriceCard>
        </div>
    </div>
</template>

<script>
import PriceCard from "@/components/PriceCard.vue";

export default {
    name: "TEST_G001",
    components: { PriceCard },
    methods: {
        plan(type) {
            this.$router.push({
                name: 'G002',
                query: { planType: type },
            });
        }
    },
}
</script>



