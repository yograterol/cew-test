<!-- Swap Start 2 -->
<article class="swap-start">


    <!-- Title -->
    <section class="row">
        <h5 class="col-xs-6 col-xs-offset-3" translate="SWAP_information">Your Information</h5>
        <div class="col-xs-3">

            <a href="{{changeNow.exchangeLink(swapOrder.fromCoin, swapOrder.toCoin, swapOrder.fromVal)}}"
               rel="noopener"
               target="_blank">
                <img src="https://changenow.io/images/embeds/button.svg" alt="ChangeNOW button">
            </a>
        </div>
    </section>
    <!-- Title -->


    <!-- Info Row -->
    <section class="order-info-wrap row">
        <div class="col-sm-4 order-info">
            <h4> {{swapOrder.fromVal}} {{swapOrder.fromCoin.toUpperCase()}} </h4>
            <p translate="SWAP_send_amt"> Amount to send </p>
        </div>
        <div class="col-sm-4 order-info">
            <h4> {{swapOrder.toVal}} {{swapOrder.toCoin.toUpperCase()}} </h4>
            <p translate="SWAP_rec_amt"> Amount to receive </p>
        </div>
        <div class="col-sm-4 order-info">
            <h4> {{swapOrder.fromVal / swapOrder.toVal | number: 6}} {{swapOrder.fromCoin.toUpperCase() + ' / ' +
                swapOrder.toCoin.toUpperCase()}} </h4>
            <p translate="SWAP_your_rate"> Your rate </p>
        </div>
    </section>
    <!-- / Info Row -->


    <!-- Your Address -->
    <section class='swap-address block'>
        <section class="row">
            <div class="col-sm-8 col-sm-offset-2 col-xs-12">


                <label><span translate="SWAP_rec_add">Your Receiving Address</span>
                    <strong>({{swapOrder.toCoin}})</strong></label>


                <div ng-switch="ethCoins.includes(swapOrder.toCoin.toUpperCase())">

                    <div class="form-group" ng-switch-when="true">
                        <address-field placeholder="0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8"
                                       var-name="swapOrder.toAddress"></address-field>
                    </div>


                    <div ng-switch-default>


                        <div ng-switch="swapOrder.toCoin.toUpperCase() === 'BTC'">

                            <input class="form-control"
                                   ng-switch-when="true"
                                   type="text"
                                   placeholder="1MEWT2SGbqtz6mPCgFcnea8XmWV5Z4Wc6"
                                   ng-model="swapOrder.toAddress"
                                   ng-class="Validator.isValidBTCAddress(swapOrder.toAddress) ? 'is-valid' : 'is-invalid'"
                            />


                            <input class="form-control"
                                   type="text"
                                   ng-switch-default
                                   placeholder="1MEWT2SGbqtz6mPCgFcnea8XmWV5Z4Wc6"
                                   ng-model="swapOrder.toAddress"
                            />

                        </div>
                    </div>


                </div>
            </div>
        </section>
        <!-- /Your Address -->
        <!-- CTA -->
        <section class="row text-center">
            <a ng-click="openOrder()" class="btn btn-primary btn-lg"><span
                    translate="SWAP_start_CTA"> Start Swap </span></a>
        </section>
        <!-- / CTA -->
    </section>


</article>
<!-- / Swap Start 2 -->
