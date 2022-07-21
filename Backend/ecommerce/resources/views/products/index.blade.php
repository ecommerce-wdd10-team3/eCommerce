@extends('layouts.app')

@section('content')
    <div class="container list_page">
        <div class="wrapper">
            <!-- Aside start -->
            <aside>
                <h3>Categories</h3>
                <form>
                    @foreach ($categories as $category)
                        <div>
                            <input type="checkbox" onclick="filterByCategory(event, this)" name="{{ $category->title }}"
                                id="{{ $category->title }}" value="{{ $category->title }}" <?php if (in_array($category->title, $categoryFilter)) {
                                    echo 'checked';
                                } ?> />
                            <label for="{{ $category->title }}">{{ $category->title }}</label>
                        </div>
                    @endforeach
                </form>
                <h3>Sizes</h3>
                <form>
                    @foreach ($sizes as $size)
                        <div>
                            <input type="checkbox" name="{{ $size->name }}" id="{{ $size->name }}"
                                onclick="filterBySize(event, this)" value="{{ $size->name }}" <?php if (in_array($size->name, $sizeFilter)) {
                                    echo 'checked';
                                } ?> />
                            <label for="{{ $size->name }}">{{ $size->name }}</label>
                        </div>
                    @endforeach
                </form>
            </aside>
            <!-- Aside ended -->
            <!-- Section start -->
            <section class="list_item">
                <div class="content">
                    @foreach ($products as $product)
                        {{-- {{ $product }} --}}
                        <div class="item">
                            <div class="product_img"> <a href="/product/{{ $product->slug }}"></a>
                                <img src="/images/item1.jpg" alt="item1">
                            </div>
                            <div class="desc">
                                <p>{{ $product->name }}</p>
                                <div class="price">${{ number_format($product->price, 2) }} CAD</div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </section>
            <!-- Section ended -->
        </div>
    </div>
@endsection
<script>
    function filterByCategory(e, el) {
        const urlSearchParams = new URLSearchParams(window.location.search);
        const params = Object.fromEntries(urlSearchParams.entries());
        let selectedCategory = params.category ? params.category.split(',') : [];
        if (selectedCategory.findIndex(x => x == e.target.value) === -1) {
            // add selected category in url
            selectedCategory.push(e.target.value);
        } else {
            // remove unselected category from url
            selectedCategory.splice(selectedCategory.findIndex(x => x == e.target.value), 1);
        }
        let categoryStr = selectedCategory.toString();
        window.location = '/product?category=' + categoryStr;
    }

    function filterBySize(e, el) {
        const urlSearchParams = new URLSearchParams(window.location.search);
        const params = Object.fromEntries(urlSearchParams.entries());
        let selectedSize = params.size ? params.size.split(',') : [];
        if (selectedSize.findIndex(x => x == e.target.value) === -1) {
            // add selected size in url
            selectedSize.push(e.target.value);
        } else {
            // remove unselected size from url
            selectedSize.splice(selectedSize.findIndex(x => x == e.target.value), 1);
        }
        let sizeStr = selectedSize.toString();
        window.location = '/product?size=' + sizeStr;
    }
</script>