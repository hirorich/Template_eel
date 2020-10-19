// 定義したコンポーネントを登録
const vm = new Vue({
    el: '#sample-components',
    data: function() {
        return {
            result: ""
        }
    },
    template: `
        <div>
            <button class="btn btn-primary" v-on:click="call_eel()"></button>
            <div>{{result}}</div>
        </div>
    `,
    methods: {
        call_eel: function() {
            this.result = "";
            let request = {test: "TEST"};
            eel.request(request);
        },
        callback_eel: function(response) {
            this.result = response;
        }
    }
});

// 処理結果
eel.expose(response_success)
function response_success(response) {
    vm.callback_eel(response);
}
eel.expose(response_error)
function response_error(response) {
    vm.callback_eel(response);
}
