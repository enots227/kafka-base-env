if [[ ! -z $WAIT_FOR ]]; then
        while IFS=';' read -ra wait_items; do
                for wait_item in "${wait_items[@]}"; do
                        IFS=':' read -ra pieces <<< "$i"
                        host="${pieces[0]}"
                        port="${pieces[1]}"

                        /opt/bin/wait-for-it.sh --host host --port port --timeout 60
                done
        done <<< "$WAIT_FOR"
fi