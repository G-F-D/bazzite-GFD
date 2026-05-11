# bazzite-GFD

This is for my personal use, though the packages are technically public (locking this down seems to be more trouble than it’s realistically worth). No support will be provided.

This uses the [https://github.com/ublue-os/image-template](public template) from Universal Blue. If you’re looking to build your own image, go over there.

# Changes

All this does right now compared to `bazzite-nvidia` is install extra software.

## Browser apps

I have a strong preference for the configurations of Mozilla’s browser software made by celenity, including [https://phoenix.celenity.dev/](Phoenix) for Firefox and [https://dove.celenity.dev/](Dove) for Thunderbird. (Their Android solution is a separate app called [https://ironfoxoss.org/](IronFox).) Using these applications in a distrobox or as Flatpaks is not ideal as this hinders integrations with the host system, including direct communication with my password manager, [https://keepassxc.org/](KeePassXC). (Browser integration for password managers is important for preventing phishing attacks.) The Flatpak installations for Phoenix and Dove are also [https://codeberg.org/celenity/Phoenix/issues/5](currently broken), and layering didn’t seem to work (plus I’d rather avoid layering anyway).

I also install [https://github.com/secureblue/Trivalent](Trivalent), because the current reality remains that using a Chromium‐based browser is sometimes necessary in order to participate in society. Installation into the image is kind of necessary because it’s not available as a Flatpak at all (and it’d make no sense because of how the sandboxing works), and because the [https://secureblue.dev/](secureblue project) keeps up with new Fedora releases much more aggressively than distrobox images do which often makes distrobox installations [https://github.com/secureblue/Trivalent/issues/563](unable to update) to the latest version (an obvious security concern).