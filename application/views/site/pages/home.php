<div class="main-banner">
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Hello, Folks!</h1>
            <p class="lead">Checkout Latest Products From Our Collection</p>
            <hr class="my-4">
            <p>List and Filter Amazon Products In BitCoin Pricing</p>
            <a class="btn btn-theme-secondary btn-flat btn-lg" href="#" role="button">Learn more</a>
        </div>
    </div>
</div>
<section class="main-section pt40 pb40">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-12">
                <div class="tile mb30">
                    <div class="tile-title">
                        <div class="title">
                            <h3><i class="feather icon-filter"></i> Filters</h3>
                        </div>
                    </div>
                    <div class="tile-content">
                        <form id="filterProductForm" action="#" method="POST">
                            <div class="form-group">
                                <label for="inputKeyword">Product Name</label>
                                <input type="text" id="inputKeyword" class="form-control" name="keyword" placeholder="Enter Part of Product Name">
                            </div>
                            <div class="form-group">
                                <label for="inputPrice">Price</label>
                                <select id="inputPrice" class="form-control" name="price">
                                    <option value="">--Select Price Range--</option>
                                    <option value="B100">0-100 BTC</option>
                                    <option value="B100A1000">100-1000 BTC</option>
                                    <option value="A1000">1000 Above BTC</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button id="filterButton" type="submit" class="btn btn-gradient2 btn-lg btn-block btn-flat ladda-button" data-style="expand-right" data-size="xs"><span class="ladda-label"><i class="feather icon-filter"></i> Filter Products</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-xl-8 col-lg-8 col-md-12">
                <div class="tile mb30">
                    <div class="tile-title">
                        <div class="title">
                            <h3><i class="feather icon-package"></i> List Products</h3>
                        </div>
                    </div>
                    <div class="tile-content">
                        <div id="productsList"></div>
                    </div>
                    <div class="tile-overlay" style="display: none;">
                        <div class="m-loader mr-2">
                            <svg class="m-circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="4" stroke-miterlimit="10" />
                            </svg>
                        </div>
                        <h3 class="l-text">Loading..</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>