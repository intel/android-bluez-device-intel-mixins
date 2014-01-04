# IA device doesn't care boot mode prop but we
# set it here for crashlogd that relies on it,
# so that we can avoid a change in crashlogd's
# source code for an easier maintainence.
BOARD_KERNEL_CMDLINE += \
	androidboot.mode="main" \

