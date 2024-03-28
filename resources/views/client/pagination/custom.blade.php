
@if ($paginator->hasPages())
<div class="pagination-wrapper">
    <nav class="col-sm-6 text-left page-link" >
        <ul class="pagination">
            @if (!$paginator->onFirstPage())
            <li><a aria-hidden="true" href="{{ $paginator->previousPageUrl() }}">&laquo;</a></li>
            @endif
            @foreach ($elements as $element)
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <li class="active"><a href="{{$url}}">{{ $page }}</a></li>
                    @else
                        <li><a href="{{$url}}">{{ $page }}</a></li>
                    @endif
                @endforeach
            @endforeach

            @if ($paginator->hasMorePages())
            <li><a aria-hidden="true" href="{{ $paginator->nextPageUrl() }}">&raquo;</a></li>
            @endif
        </ul>
    </nav>
    <div class="col-sm-6 text-right page-result">hiển thị từ 
        <span class="fw-semibold">{{$paginator->firstItem()}}</span> đến
        <span class="fw-semibold">{{$paginator->lastItem()}}</span> trên tổng số 
        <span class="fw-semibold">{{$paginator->total()}}</span>
    </div>
</div>
@endif