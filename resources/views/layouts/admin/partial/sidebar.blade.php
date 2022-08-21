<div class="app-sidebar sidebar-shadow">
    <div class="app-header__logo">
        <div class="logo-src"></div>
        <div class="header__pane ml-auto">
            <div>
                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic"
                        data-class="closed-sidebar">
                    <span class="hamburger-box">
                        <span class="hamburger-inner"></span>
                    </span>
                </button>
            </div>
        </div>
    </div>
    <div class="app-header__mobile-menu">
        <div>
            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </button>
        </div>
    </div>
    <div class="app-header__menu">
        <span>
            <button type="button"
                    class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                <span class="btn-icon-wrapper">
                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                </span>
            </button>
        </span>
    </div>
    <div class="scrollbar-sidebar">
        <div class="app-sidebar__inner">
            <ul class="vertical-nav-menu">
                <li class="app-sidebar__heading">Dashboard</li>
                <li>
                    <a href="{{ route('admin.home') }}" class="{{ Request::RouteIs('admin.home') ? 'mm-active ' : '' }}">
                        <i class="metismenu-icon pe-7s-rocket"></i>
                        Dashboard
                    </a>
                </li>
                <li class="app-sidebar__heading">Reports</li>
                <li class="{{ Request::RouteIs(['admin.sales.summary', 'admin.total.sales']) ? 'mm-active ' : '' }}">
                    <a href="#">
                        <i class="metismenu-icon pe-7s-display2"></i>
                        Sales Report
                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                    </a>
                    <ul>
                        <li>
                            <a href="{{ route('admin.sales.summary') }}" class="{{ Request::RouteIs('admin.sales.summary') ? 'mm-active ' : '' }}">
                                <i class="metismenu-icon"></i>
                                Sales Summary
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('admin.total.sales') }}" class="{{ Request::RouteIs('admin.total.sales') ? 'mm-active ' : '' }}">
                                <i class="metismenu-icon"></i>
                                Total List of Sale
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="{{ route('admin.order.report') }}" class="{{ Request::RouteIs('admin.order.report') ? 'mm-active ' : '' }}">
                        <i class="metismenu-icon pe-7s-wallet"></i>
                        Order Report
                    </a>
                </li>
                <li>
                    <a href="{{ route('admin.payment.report') }}" class="{{ Request::RouteIs('admin.payment.report') ? 'mm-active ' : '' }}">
                        <i class="metismenu-icon pe-7s-cash"></i>
                        Payment Report
                    </a>
                </li>
{{--                <li>--}}
{{--                    <a href="#">--}}
{{--                        <i class="metismenu-icon pe-7s-diamond"></i>--}}
{{--                        Elements--}}
{{--                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>--}}
{{--                    </a>--}}
{{--                    <ul>--}}
{{--                        <li>--}}
{{--                            <a href="elements-buttons-standard.html">--}}
{{--                                <i class="metismenu-icon"></i>--}}
{{--                                Buttons--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-dropdowns.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>Dropdowns--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-icons.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>Icons--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-badges-labels.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>Badges--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-cards.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>Cards--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-list-group.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>List Groups--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-navigation.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>Navigation Menus--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li>--}}
{{--                            <a href="elements-utilities.html">--}}
{{--                                <i class="metismenu-icon">--}}
{{--                                </i>Utilities--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                    </ul>--}}
{{--                </li>--}}
            </ul>
        </div>
    </div>
</div>
