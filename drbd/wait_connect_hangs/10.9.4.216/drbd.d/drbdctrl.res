resource .drbdctrl {
    net {
        cram-hmac-alg       sha256;
        shared-secret       "1IlcwhV9CRtCM5BZmm+l";
        allow-two-primaries no;
    }
    volume 0 {
        device      minor 0;
        disk        /dev/vg00/.drbdctrl_0;
        meta-disk   internal;
    }
    volume 1 {
        device      minor 1;
        disk        /dev/vg00/.drbdctrl_1;
        meta-disk   internal;
    }
    on node-10-9-4-231 {
        node-id     2;
        address     ipv4 10.9.4.231:6999;
    }
    on node-10-9-4-216 {
        node-id     0;
        address     ipv4 10.9.4.216:6999;
    }
    on node-10-9-4-166 {
        node-id     1;
        address     ipv4 10.9.4.166:6999;
    }
    connection-mesh {
        hosts node-10-9-4-231 node-10-9-4-216 node-10-9-4-166;
        net {
            protocol C;
        }
    }
}
