;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-
;;;
;;; Copyright (c) 2004, Oliver Markovic <entrox@entrox.org> 
;;;   All rights reserved. 
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions are met:
;;;
;;;  o Redistributions of source code must retain the above copyright notice,
;;;    this list of conditions and the following disclaimer. 
;;;  o Redistributions in binary form must reproduce the above copyright
;;;    notice, this list of conditions and the following disclaimer in the
;;;    documentation and/or other materials provided with the distribution. 
;;;  o Neither the name of the author nor the names of the contributors may be
;;;    used to endorse or promote products derived from this software without
;;;    specific prior written permission. 
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;; POSSIBILITY OF SUCH DAMAGE.

(in-package :cl-opengl)

;;; A

(defcenum (accum-op enum)
  (:accum #x100)
  (:load #x101)
  (:return #x102)
  (:mult #x103)
  (:add #x104))

;;; B

(defcenum (begin-mode enum)
  (:points #x0)
  (:lines #x1)
  (:line-loop #x2)
  (:line-strip #x3)
  (:triangles #x4)
  (:triangle-strip #x5)
  (:triangle-fan #x6)
  (:quads #x7)
  (:quad-strip #x8)
  (:polygon #x9))

(defcenum (blend-equation enum)
  (:func-add #x8006)
  (:func-subtract #x800A)
  (:func-reverse-subtract #x800B)
  (:min #x8007)
  (:max #x8008)
  (:logic-op #xBF1))

(defcenum (blend-func enum)
  (:zero #x0)
  (:one #x1)
  (:src-color #x300)
  (:one-minus-src-color #x301)
  (:dst-color #x306)
  (:one-minus-dst-color #x307)
  (:src-alpha #x302)
  (:one-minus-src-alpha #x303)
  (:dst-alpha #x304)
  (:one-minus-dst-alpha #x305)
  (:constant-color #x8001)
  (:one-minus-constant-color #x8002)
  (:constant-alpha #x8003)
  (:one-minus-constant-alpha #x8004)
  (:src-alpha-saturate #x308))


;;; C

(defcenum (call-lists-type enum)
  (:byte #x1400)
  (:unsigned-byte #x1401)
  (:short #x1402)
  (:unsigned-short #x1403)
  (:int #x1404)
  (:unsigned-int #x1405)
  (:float #x1406))

(defcenum (client-attributes enum)
  (:client-pixel-store-bit #x1)
  (:client-vertex-array-bit #x2)
  (:client-all-attrib-bits #xFFFFFFFF))

(defcenum (clear-buffer-bits enum)
  (:depth-buffer-bit #x100)
  (:accum-buffer-bit #x200)
  (:stencil-buffer-bit #x400)
  (:color-buffer-bit #x4000))

(defcenum (clip-plane-name enum)
  (:clip-plane0 #x3000)
  (:clip-plane1)
  (:clip-plane2)
  (:clip-plane3)
  (:clip-plane4)
  (:clip-plane5))

(defcenum (color-material-mode enum)
  (:emission #x1600)
  (:ambient #x1200)
  (:diffuse #x1201)
  (:specular #x1202)
  (:ambient-and-diffuse #x1602))

(defcenum (color-table-name enum)
  (:color-table #x80D0)
  (:post-convolution-color-table #x80D1)
  (:post-color-matrix-color-table #x80D2)
  (:proxy-color-table #x80D3)
  (:proxy-post-convolution-color-table #x80D4)
  (:proxy-post-color-matrix-color-table #x80D5))

(defcenum (compare-func enum)
  (:never #x200)
  (:less #x201)
  (:equal #x202)
  (:lequal #x203)
  (:greater #x204)
  (:notequal #x205)
  (:gequal #x206)
  (:always #x207))

(defcenum (copy-pixels-type enum)
  (:color #x1800)
  (:depth #x18001)
  (:stencil #x1802))

;;; D

(defcenum (depth-texture-mode enum)
  (:luminance #x1909)
  (:intensity #x8049)
  (:alpha #x1906))

(defcenum (display-list-mode enum)
  (:compile #x1300)
  (:compile-and-execute #x1301))

(defcenum (draw-buffer enum)
  (:none #x0)
  (:front-left #x400)
  (:front-right #x401)
  (:back-left #x402)
  (:back-right #x403)
  (:front #x404)
  (:back #x405)
  (:left #x406)
  (:right #x407)
  (:front-and-back #x408)
  (:aux0 #x409)
  (:aux1 #x40A)
  (:aux2 #x40B)
  (:aux3 #x40C))


;;; E

(defcenum (enable-cap enum)
  (:point-smooth #xB10)
  (:line-smooth #xB20)
  (:line-stipple #xB24)
  (:polygon-smooth #xB41)
  (:polygon-stipple #xB42)
  (:cull-face #xB44)
  (:lighting #xB50)
  (:color-material #xB57)
  (:fog #xB60)
  (:depth-test #xB71)
  (:stencil-test #xB90)
  (:normalize #xBA1)
  (:alpha-test #xBC0)
  (:blend #xBE2)
  (:dither #xBD0)
  (:index-logic-op #xBF1)
  (:color-logic-op #xBF2)
  (:scissor-test #xC11)
  (:texture-gen-s #xC60)
  (:texture-gen-t #xC61)
  (:texture-gen-r #xC62)
  (:texture-gen-q #xC63)
  (:auto-normal #xD80)
  (:map1-grid-domain #xDD0)
  (:map1-grid-segments #xDD1)
  (:map2-grid-domain #xDD2)
  (:map2-grid-segments #xDD3)
  (:texture-1d #xDE0)
  (:texture-2d #xDE1)
  (:polygon-offset-point #x2A01)
  (:polygon-offset-line #x2A02)
  (:clip-plane0 #x3000)
  (:clip-plane1 #x3001)
  (:clip-plane2 #x3002)
  (:clip-plane3 #x3003)
  (:clip-plane4 #x3004)
  (:clip-plane5 #x3005)
  (:light0 #x4000)
  (:light1 #x4001)
  (:light2 #x4002)
  (:light3 #x4003)
  (:light4 #x4004)
  (:light5 #x4005)
  (:light6 #x4006)
  (:light7 #x4007)
  (:convolution-1d #x8010)
  (:convolution-2d #x8011)
  (:separable-2d #x8012)
  (:histogram #x8024)
  (:minmax #x802E)
  (:polygon-offset-fill #x8037)
  (:rescale-normal #x803A)
  (:texture-3d #x806F)
  (:vertex-array #x8074)
  (:normal-array #x8075)
  (:color-array #x8076)
  (:index-array #x8077)
  (:texture-coord-array #x8078)
  (:edge-flag-array #x8079)
  (:multisample #x809D)
  (:sample-alpha-to-coverage #x809E)
  (:sample-alpha-to-one #x809F)
  (:sample-coverage #x80A0)
  (:color-table #x80D0)
  (:post-convolution-color-table #x80D1)
  (:post-color-matrix-color-table #x80D2)
  (:fog-coord-array #x8457)
  (:color-sum #x8458)
  (:secondary-color-array #x845E)
  (:texture-cube-map #x8513)
  (:vertex-program-point-size #x8642)
  (:vertex-program-two-side #x8643)
  (:point-sprite #x8861))

(defcenum (eval-mesh-1-mode enum)
  (:point #x1B00)
  (:line #x1B01))

(defcenum (eval-mesh-2-mode enum)
  (:point #x1B00)
  (:line #x1B01)
  (:fill #x1B02))


;;; F

(defcenum (face-direction enum)
  (:cw #x900)
  (:ccw #x901))

(defcenum (feedback-type enum)
  (:2d #x600)
  (:3d #x601)
  (:3d-color #x602)
  (:3d-color-texture #x603)
  (:4d-color-texture #x604))

(defcenum (fog-coord-src enum)
  (:fragment-depth #x8452)
  (:fog-coord #x8451))

(defcenum (fog-mode enum)
  (:exp #x800)
  (:exp2 #x801)
  (:linear #x2601))

(defcenum (fog-parameter enum)
  (:fog-mode #xB65)
  (:fog-coord-src #x8450)
  (:fog-density #xB62)
  (:fog-start #xB63)
  (:fog-end #xB64))


;;; G

(defcenum (gl-error enum)
  (:no-error #x0)
  (:invalid-enum #x500)
  (:invalid-value #x501)
  (:invalid-operation #x502)
  (:stack-overflow #x503)
  (:stack-underflow #x504)
  (:out-of-memory #x505)
  (:table-too-large #x8031))


;;; H

(defcenum (hint enum)
  (:dont-care #x1100)
  (:fastest #x1101)
  (:nicest #x1102))

(defcenum (hint-target enum)
  (:perspective-correction-hint #xC50)
  (:point-smooth-hint #xC51)
  (:line-smooth-hint #xC52)
  (:polygon-smooth-hint #xC53)
  (:fog-hint #xC54)
  (:generate-mipmap-hint #x8192)
  (:texture-compression-hint #x84EF)
  (:fragment-shader-derivative-hint #x8B8B))


;;; L

(defcenum (light-model-color-control enum)
  (:single-color #x81F9)
  (:separate-specular-color #x81FA))

(defcenum (light-model-parameter enum)
  (:light-model-ambient #xB53)
  (:light-model-local-viewer #xB51)
  (:light-model-two-side #xB52)
  (:light-model-color-sontrol #x81F8))

(defcenum (light-name enum)
  (:light0 #x4000)
  (:light1)
  (:light2)
  (:light3)
  (:light4)
  (:light5)
  (:light6)
  (:light7))

(defcenum (light-parameter enum)
  (:ambient #x1200)
  (:diffuse #x1201)
  (:specular #x1202)
  (:position #x1203)
  (:spot-direction #x1204)
  (:spot-exponent #x1205)
  (:spot-cutoff #x1206)
  (:constant-attenuation #x1207)
  (:linear-attenuation #x1208)
  (:quadratic-attenuation #x1209))

(defcenum (logic-op enum)
  (:clear #x1500)
  (:and #x1501)
  (:and-reverse #x1502)
  (:copy #x1503)
  (:and-inverted #x1504)
  (:noop #x1505)
  (:xor #x1506)
  (:or #x1507)
  (:nor #x1508)
  (:equiv #x1509)
  (:invert #x150A)
  (:or-reverse #x150B)
  (:copy-inverted #x150C)
  (:or-inverted #x150D)
  (:nand #x150E)
  (:set #x150F))


;;; M

(defcenum (map1-target enum)
  (:map1-vertex-3 #xD97)
  (:map1-vertex-4 #xD98)
  (:map1-index #xD91)
  (:map1-color-4 #xD90)
  (:map1-normal #xD92)
  (:map1-texture-coord-1 #xD93)
  (:map1-texture-coord-2 #xD94)
  (:map1-texture-coord-3 #xD95)
  (:map1-texture-coord-4 #xD96))

(defcenum (map2-target enum)
  (:map2-vertex-3 #xDB7)
  (:map2-vertex-4 #xDB8)
  (:map2-index #xDB1)
  (:map2-color-4 #xDB0)
  (:map2-normal #xDB2)
  (:map2-texture-coord-1 #xDB3)
  (:map2-texture-coord-2 #xDB4)
  (:map2-texture-coord-3 #xDB5)
  (:map2-texture-coord-4 #xDB6))

(defcenum (material-parameter enum)
  (:ambient #x1200)
  (:diffuse #x1201)
  (:ambient-and-diffuse #x1602)
  (:specular #x1202)
  (:emission #x1600)
  (:shininess #x1601)
  (:color-indexes #x1603))

(defcenum (matrix-mode enum)
  (:modelview #x1700)
  (:projection #x1701)
  (:texture #x1702)
  (:color #x1800))


;;; P

(defcenum (pixel-data-type enum)
  (:byte #x1400)
  (:unsigned-byte #x1401)
  (:bitmap #x1A00)
  (:short #x1402)
  (:unsigned-short #x1403)
  (:int #x14004)
  (:unsigned-int #x1405)
  (:float #x1406)
  (:unsigned-byte-3-3-2 #x8032)
  (:unsigned-byte-2-3-3-rev #x8362)
  (:unsigned-short-5-6-5 #x8363)
  (:unsigned-short-5-6-5-rev #x8364)
  (:unsigned-short-4-4-4-4 #x8033)
  (:unsigned-short-4-4-4-4-rev #x8365)
  (:unsigned-short-5-5-5-1 #x8034)
  (:unsigned-short-1-5-5-5-rev #x8366)
  (:unsigned-int-8-8-8-8 #x8035)
  (:unsigned-int-8-8-8-8-rev #x8367)
  (:unsigned-int-10-10-10-2 #x8036)
  (:unsigned-int-2-10-10-10-rev #x8368))

(defcenum (pixel-data-format enum)
  (:color-index #x1900)
  (:stencil-index #x1901)
  (:depth-component #x1902)
  (:red #x1903)
  (:green #x1904)
  (:blue #x1905)
  (:alpha #x1906)
  (:rgb #x1907)
  (:rgba #x1908)
  (:bgr #x80E0)
  (:bgra #x80E1)
  (:luminance #x1909)
  (:luminance-alpha #x190A))

(defcenum (pixel-data-internal-format enum)
  (:alpha #x1906)
  (:alpha4 #x803B)
  (:alpha8 #x803C)
  (:alpha12 #x803D)
  (:alpha16 #x803E)
  (:depth-component #x1902)
  (:depth-component16 #x81A5)
  (:depth-component24 #x81A6)
  (:depth-component32 #x81A7)
  (:luminance #x1909)
  (:luminance4 #x803F)
  (:luminance8 #x8040)
  (:luminance12 #x8041)
  (:luminance16 #x8042)
  (:luminance-alpha #x190A)
  (:luminance4-alpha4 #x8043)
  (:luminance6-alpha2 #x8044)
  (:luminance8-alpha8 #x8045)
  (:luminance12-alpha4 #x8046)
  (:luminance12-alpha12 #x8047)
  (:luminance16-alpha16 #x8048)
  (:intensity #x8049)
  (:intensity4 #x804A)
  (:intensity8 #x804B)
  (:intensity12 #x804C)
  (:intensity16 #x804D)
  (:rgb #x1907)
  (:r3-g3-b2 #x2A10)
  (:rgb4 #x804F)
  (:rgb5 #x8050)
  (:rgb8 #x8051)
  (:rgb10 #x8052)
  (:rgb12 #x8053)
  (:rgb16 #x8054)
  (:rgba #x1908)
  (:rgba2 #x8055)
  (:rgba4 #x8056)
  (:rgb5-a1 #x8057)
  (:rgba8 #x8058)
  (:rgb10-a2 #x8059)
  (:rgba12 #x805A)
  (:rgba16 #x805B))

(defcenum (pixel-map enum)
  (:pixel-map-i-to-i #xC70)
  (:pixel-map-s-to-s #xC71)
  (:pixel-map-i-to-r #xC72)
  (:pixel-map-i-to-g #xC73)
  (:pixel-map-i-to-b #xC74)
  (:pixel-map-i-to-a #xC75)
  (:pixel-map-r-to-r #xC76)
  (:pixel-map-g-to-g #xC77)
  (:pixel-map-b-to-b #xC78)
  (:pixel-map-a-to-a #xC79))

(defcenum (pixel-store-mode enum)
  (:unpack-swap-bytes #xCF0)
  (:unpack-lsb-first #xCF1)
  (:unpack-row-length #xCF2)
  (:unpack-skip-rows #xCF3)
  (:unpack-skip-pixels #xCF4)
  (:unpack-alignment #xCF5)
  (:unpack-image-height #x806E)
  (:unpack-skip-images #x806D))

(defcenum (pixel-transfer-mode enum)
  (:map-color #xD10)
  (:map-stencil #xD11)
  (:index-shift #xD12)
  (:index-offset #xD13)
  (:red-scale #xD14)
  (:green-scale #xD18)
  (:blue-scale #xD1A)
  (:depth-scale #xD1E)
  (:alpha-scale #xD1C)
  (:red-bias #xD15)
  (:green-bias #xD19)
  (:blue-bias #xD1B)
  (:depth-bias #xD1F)
  (:alpha-bias #xD1D)
  (:post-convolution-red-scale #x801C)
  (:post-convolution-green-scale #x801D)
  (:post-convolution-blue-scale #x801E)
  (:post-convolution-alpha-scale #x801F)
  (:post-convolution-red-bias #x8020)
  (:post-convolution-green-bias #x8021)
  (:post-convolution-blue-bias #x8022)
  (:post-convolution-alpha-bias #x8023)
  (:post-color-matrix-red-scale #x80B4)
  (:post-color-matrix-green-scale #x80B5)
  (:post-color-matrix-blue-scale #x80B6)
  (:post-color-matrix-alpha-scale #x80B7)
  (:post-color-matrix-red-bias #x80B8)
  (:post-color-matrix-green-bias #x80B9)
  (:post-color-matrix-blue-bias #x80BA)
  (:post-color-matrix-alpha-bias #x80BB))

(defcenum (point-parameter enum)
  (:point-size-min #x8126)
  (:point-size-max #x8127)
  (:point-fade-threshold-size #x8128)
  (:point-distance-attenuation #x8129)
  (:point-sprite-coord-origin #x8CA0))

(defcenum (point-sprite-coord-origin enum)
  (:lower-left #x8CA1)
  (:upper-left #x8CA2))

(defcenum (polygon-face enum)
  (:front #x404)
  (:back #x405)
  (:front-and-back #x408))

(defcenum (polygon-mode enum)
  (:point #x1B00)
  (:line #x1B01)
  (:fill #x1B02))

(defcenum (program-attribute-type enum)
  (:float #x1406)
  (:float-vec2 #x8B50)
  (:float-vec3 #x8B51)
  (:float-vec4 #x8B52)
  (:float-mat2 #x8B5A)
  (:float-mat3 #x8B5B)
  (:float-mat4 #x8B5C))

(defcenum (program-uniform-type enum)
  (:float #x1406)
  (:float-vec2 #x8B50)
  (:float-vec3 #x8B51)
  (:float-vec4 #x8B52)
  (:int #x1404)
  (:int-vec2 #x8B53)
  (:int-vec3 #x8B54)
  (:int-vec4 #x8B55)
  (:bool #x8B56)
  (:bool-vec2 #x8B57)
  (:bool-vec3 #x8B58)
  (:bool-vec4 #x8B59)
  (:float-mat2 #x8B5A)
  (:float-mat3 #x8B5B)
  (:float-mat4 #x8B5C)
  (:sampler-1d #x8B5D)
  (:sampler-2d #x8B5E)
  (:sampler-3d #x8B5F)
  (:sampler-cube #x8B60)
  (:sampler-1d-shadow #x8B61)
  (:sampler-2d-shadow #x8B62))


;;; Q

(defcenum (query-target enum)
  (:samples-passed #x8914))


;;; R

(defcenum (render-mode enum)
  (:render )
  (:select)
  (:feedback))


;;; S

(defcenum (server-attributes enum)
  (:current-bit #x1)
  (:point-bit #x2)
  (:line-bit #x4)
  (:polygon-bit #x8)
  (:polygon-stipple-bit #x10)
  (:pixel-mode-bit #x20)
  (:lighting-bit #x40)
  (:fog-bit #x80)
  (:depth-buffer-bit #x100)
  (:accum-buffer-bit #x200)
  (:stencil-buffer-bit #x400)
  (:viewport-bit #x800)
  (:transform-bit #x1000)
  (:enable-bit #x2000)
  (:color-buffer-bit #x4000)
  (:hint-bit #x8000)
  (:eval-bit #x10000)
  (:list-bit #x20000)
  (:texture-bit #x40000)
  (:scissor-bit #x80000)
  (:multisample-bit #x20000000)
  (:all-attrib-bits #xFFFFF))

(defcenum (shade-model enum)
  (:smooth #x1D01)
  (:flat #x1D00))

(defcenum (shader-type enum)
  (:vertex-shader #x8b31)
  (:fragment-shader #x8b30))

(defcenum (stencil-op enum)
  (:keep #x1E00)
  (:zero #x0)
  (:replace #x1E01)
  (:incr #x1E02)
  (:decr #x1E03)
  (:invert #x150A)
  (:incr-wrap #x8507)
  (:decr-wrap #x8508))

(defcenum (string-name enum)
  (:vendor #x1F00)
  (:renderer #x1F01)
  (:version #x1F02)
  (:extensions #x1F03)
  (:shading-language-version #x8B8C))


;;; T

(defcenum (texture-compare-mode enum)
  (:none #x0)
  (:compare-r-to-texture #x884E))

(defcenum (tex-image-1d-target enum)
  (:texture-1d #xDE0)
  (:proxy-texture-1d #x8063))

(defcenum (tex-image-2d-target enum)
  (:texture-2d #xDE1)
  (:proxy-texture-2d #x8064)
  (:proxy-texture-cube-map #x851B)
  (:texture-cube-map-positive-x #x8515)
  (:texture-cube-map-positive-y #x8517)
  (:texture-cube-map-positive-z #x8519)
  (:texture-cube-map-negative-x #x8516)
  (:texture-cube-map-negative-y #x8518)
  (:texture-cube-map-negative-z #x851A))

(defcenum (tex-image-3d-target enum)
  (:texture-3d #x806F)
  (:proxy-texture-3d #x8070))

(defcenum (texture-mag-filter enum)
  (:nearest #x2600)
  (:linear #x2601))

(defcenum (texture-min-filter enum)
  (:nearest #x2600)
  (:linear #x2601)
  (:nearest-mipmap-nearest #x2700)
  (:linear-mipmap-nearest #x2701)
  (:nearest-mipmap-linear #x2702)
  (:linear-mipmap-linear #x2703))

(defcenum (texture-name enum)
  (:texture0 #x84C0)
  (:texture1)
  (:texture2)
  (:texture3)
  (:texture4)
  (:texture5)
  (:texture6)
  (:texture7)
  (:texture8)
  (:texture9)
  (:texture10)
  (:texture11)
  (:texture12)
  (:texture13)
  (:texture14)
  (:texture15)
  (:texture16)
  (:texture17)
  (:texture18)
  (:texture19)
  (:texture20)
  (:texture21)
  (:texture22)
  (:texture23)
  (:texture24)
  (:texture25)
  (:texture26)
  (:texture27)
  (:texture28)
  (:texture29)
  (:texture30)
  (:texture31))

(defcenum (texture-parameter enum)
  (:texture-wrap-s #x2802)
  (:texture-wrap-t #x2803)
  (:texture-wrap-r #x8072)
  (:texture-min-filter #x2801)
  (:texture-mag-filter #x2800)
  (:texture-border-color #x1004)
  (:texture-priority #x8066)
  (:texture-min-lod #x813A)
  (:texture-max-lod #x813B)
  (:texture-base-level #x813C)
  (:texture-max-level #x813D)
  (:texture-lod-bias #x8501)
  (:depth-texture-mode #x884B)
  (:texture-compare-mode #x884C)
  (:texture-compare-func #x884D)
  (:generate-mipmap #x8191))

(defcenum (texture-target enum)
  (:texture-1d #xDE0)
  (:texture-2d #xDE1)
  (:texture-3d #x806F)
  (:texture-cube-map #x8513))

(defcenum (texture-wrap-mode enum)
  (:clamp #x2900)
  (:clamp-to-edge #x812F)
  (:clamp-to-border #x812D)
  (:repeat #x2901)
  (:mirrored-repeat #x8370))

