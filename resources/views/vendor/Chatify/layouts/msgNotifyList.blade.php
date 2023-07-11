<li class="{{ $message->message_count > 0 ? 'newChat' : '' }}">



    <a href="{{ url('/chatify', $message->from_id) }}" class="dropdown-notification-item">
        <div class="dropdown-notification-icon">
            <figure class="obj-fit">
                <img src="{{ asset('profile/colleicon.png') }}">
            </figure>
        </div>
        <div class="dropdown-notification-item-info"
            style="    display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;">
            <div class="notification-item-message">
                {{ $message->name ?? 'No User' }}
                @if ($message->message_count > 0)
                    <span class="badge badge-warning">{{ $message->message_count }}</span>
                @endif
            </div>
            <div class="notification-item-time">
                {{ $message->message_count > 0 ? 'Now' : '' }}
            </div>
        </div>
    </a>
</li>
