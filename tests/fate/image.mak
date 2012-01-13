FATE_TESTS += fate-dpx
fate-dpx: CMD = framecrc -i $(SAMPLES)/dpx/lighthouse_rgb48.dpx

FATE_TESTS += fate-fax-g3
fate-fax-g3: CMD = framecrc -i $(SAMPLES)/CCITT_fax/G31D.TIF

FATE_TESTS += fate-fax-g3s
fate-fax-g3s: CMD = framecrc -i $(SAMPLES)/CCITT_fax/G31DS.TIF

FATE_TESTS += fate-pictor
fate-pictor: CMD = framecrc -i $(SAMPLES)/pictor/MFISH.PIC -pix_fmt rgb24

FATE_TESTS += fate-ptx
fate-ptx: CMD = framecrc -i $(SAMPLES)/ptx/_113kw_pic.ptx -pix_fmt rgb24

FATE_TESTS += fate-sunraster-1bit-raw
fate-sunraster-1bit-raw: CMD = framecrc -i $(SAMPLES)/sunraster/lena-1bit-raw.sun

FATE_TESTS += fate-sunraster-1bit-rle
fate-sunraster-1bit-rle: CMD = framecrc -i $(SAMPLES)/sunraster/lena-1bit-rle.sun

FATE_TESTS += fate-sunraster-8bit-raw
fate-sunraster-8bit-raw: CMD = framecrc -i $(SAMPLES)/sunraster/lena-8bit-raw.sun -pix_fmt rgb24

FATE_TESTS += fate-sunraster-8bit-rle
fate-sunraster-8bit-rle: CMD = framecrc -i $(SAMPLES)/sunraster/lena-8bit-rle.sun -pix_fmt rgb24

FATE_TESTS += fate-sunraster-24bit-raw
fate-sunraster-24bit-raw: CMD = framecrc -i $(SAMPLES)/sunraster/lena-24bit-raw.sun

FATE_TESTS += fate-sunraster-24bit-rle
fate-sunraster-24bit-rle: CMD = framecrc -i $(SAMPLES)/sunraster/lena-24bit-rle.sun

FATE_TARGA = CBW8       \
             CTC16      \
             CTC24      \
             CTC32      \
             UBW8       \
             UTC16      \
             UTC24      \
             UTC32

FATE_TARGA := $(FATE_TARGA:%=fate-targa-conformance-%)  \
              fate-targa-top-to-bottom

FATE_TESTS += $(FATE_TARGA)
fate-targa: $(FATE_TARGA)

fate-targa-conformance-CBW8:  CMD = framecrc -i $(SAMPLES)/targa-conformance/CBW8.TGA
# fate-targa-conformance-CCM8:  CMD = framecrc -i $(SAMPLES)/targa-conformance/CCM8.TGA
fate-targa-conformance-CTC16: CMD = framecrc -i $(SAMPLES)/targa-conformance/CTC16.TGA -pix_fmt rgb555le
fate-targa-conformance-CTC24: CMD = framecrc -i $(SAMPLES)/targa-conformance/CTC24.TGA
fate-targa-conformance-CTC32: CMD = framecrc -i $(SAMPLES)/targa-conformance/CTC32.TGA -pix_fmt bgra
fate-targa-conformance-UBW8:  CMD = framecrc -i $(SAMPLES)/targa-conformance/UBW8.TGA
# fate-targa-conformance-UCM8:  CMD = framecrc -i $(SAMPLES)/targa-conformance/UCM8.TGA
fate-targa-conformance-UTC16: CMD = framecrc -i $(SAMPLES)/targa-conformance/UTC16.TGA -pix_fmt rgb555le
fate-targa-conformance-UTC24: CMD = framecrc -i $(SAMPLES)/targa-conformance/UTC24.TGA
fate-targa-conformance-UTC32: CMD = framecrc -i $(SAMPLES)/targa-conformance/UTC32.TGA -pix_fmt bgra

fate-targa-top-to-bottom: CMD = framecrc -i $(SAMPLES)/targa/lena-top-to-bottom.tga
