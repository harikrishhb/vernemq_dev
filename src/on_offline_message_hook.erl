-module(on_offline_message_hook).
-include("vmq_plugin_types.hrl").

%% called as an 'all'-hook, return value is ignored
-callback on_offline_message(SubscriberId  :: subscriber_id(),
                             QoS           :: qos(),
                             Topic         :: topic(),
                             Payload       :: payload(),
                             Retain        :: flag()) -> any().
