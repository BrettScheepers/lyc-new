[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex a11a64d4..1dcef2d9 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -1,5 +1,2 @@[m
 node_modules[m
[31m-packages/**/node_modules[m
[31m-.env[m
[31m-.pnpm-store[m
[31m-packages/**/dist[m
\ No newline at end of file[m
[32m+[m[32m.env[m
\ No newline at end of file[m
[1mdiff --git a/.pnpm-store/v3/files/00/053131bc046ebe2792484232840eceb78280ac309229662afb51ca47e8bd28205b347494bcb823f8f917e112f9c5642efe8e8e4ac7a09d5d81acd4a2389696 b/.pnpm-store/v3/files/00/053131bc046ebe2792484232840eceb78280ac309229662afb51ca47e8bd28205b347494bcb823f8f917e112f9c5642efe8e8e4ac7a09d5d81acd4a2389696[m
[1mdeleted file mode 100644[m
[1mindex abdebcdd..00000000[m
[1m--- a/.pnpm-store/v3/files/00/053131bc046ebe2792484232840eceb78280ac309229662afb51ca47e8bd28205b347494bcb823f8f917e112f9c5642efe8e8e4ac7a09d5d81acd4a2389696[m
[1m+++ /dev/null[m
[36m@@ -1,7 +0,0 @@[m
[31m-Copyright 2015 Tobias Koppers[m
[31m-[m
[31m-Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:[m
[31m-[m
[31m-The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.[m
[31m-[m
[31m-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.[m
[1mdiff --git a/.pnpm-store/v3/files/00/06153bcd0c3ea2aae6072d2c52f841a5adfb663a29fcf6ab5c68f2d3e46a5e97d18248e4f1f7adc26fecc20b9e4d35b12fda43f0028933150913246b9ef2df b/.pnpm-store/v3/files/00/06153bcd0c3ea2aae6072d2c52f841a5adfb663a29fcf6ab5c68f2d3e46a5e97d18248e4f1f7adc26fecc20b9e4d35b12fda43f0028933150913246b9ef2df[m
[1mdeleted file mode 100644[m
[1mindex 29300fe1..00000000[m
[1m--- a/.pnpm-store/v3/files/00/06153bcd0c3ea2aae6072d2c52f841a5adfb663a29fcf6ab5c68f2d3e46a5e97d18248e4f1f7adc26fecc20b9e4d35b12fda43f0028933150913246b9ef2df[m
[1m+++ /dev/null[m
[36m@@ -1,1105 +0,0 @@[m
[31m-# Copyright (c) 2012 The Chromium Authors. All rights reserved.[m
[31m-# Use of this source code is governed by a BSD-style license that can be[m
[31m-# found in the LICENSE file.[m
[31m-[m
[31m-{[m
[31m-  'variables': {[m
[31m-    'chromium_code': 1,[m
[31m-    # Override to dynamically link the PulseAudio library.[m
[31m-    'use_pulseaudio%': 0,[m
[31m-    # Override to dynamically link the cras (ChromeOS audio) library.[m
[31m-    'use_cras%': 0,[m
[31m-  },[m
[31m-  'targets': [[m
[31m-    {[m
[31m-      'target_name': 'media',[m
[31m-      'type': '<(component)',[m
[31m-      'dependencies': [[m
[31m-        'yuv_convert',[m
[31m-        '../base/base.gyp:base',[m
[31m-        '../base/third_party/dynamic_annotations/dynamic_annotations.gyp:dynamic_annotations',[m
[31m-        '../build/temp_gyp/googleurl.gyp:googleurl',[m
[31m-        '../crypto/crypto.gyp:crypto',[m
[31m-        '../third_party/openmax/openmax.gyp:il',[m
[31m-        '../ui/ui.gyp:ui',[m
[31m-      ],[m
[31m-      'defines': [[m
[31m-        'MEDIA_IMPLEMENTATION',[m
[31m-      ],[m
[31m-      'include_dirs': [[m
[31m-        '..',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'audio/android/audio_manager_android.cc',[m
[31m-        'audio/android/audio_manager_android.h',[m
[31m-        'audio/android/audio_track_output_android.cc',[m
[31m-        'audio/android/audio_track_output_android.h',[m
[31m-        'audio/android/opensles_input.cc',[m
[31m-        'audio/android/opensles_input.h',[m
[31m-        'audio/android/opensles_output.cc',[m
[31m-        'audio/android/opensles_output.h',[m
[31m-        'audio/async_socket_io_handler.h',[m
[31m-        'audio/async_socket_io_handler_posix.cc',[m
[31m-        'audio/async_socket_io_handler_win.cc',[m
[31m-        'audio/audio_buffers_state.cc',[m
[31m-        'audio/audio_buffers_state.h',[m
[31m-        'audio/audio_io.h',[m
[31m-        'audio/audio_input_controller.cc',[m
[31m-        'audio/audio_input_controller.h',[m
[31m-        'audio/audio_input_stream_impl.cc',[m
[31m-        'audio/audio_input_stream_impl.h',[m
[31m-        'audio/audio_device_name.cc',[m
[31m-        'audio/audio_device_name.h',[m
[31m-        'audio/audio_manager.cc',[m
[31m-        'audio/audio_manager.h',[m
[31m-        'audio/audio_manager_base.cc',[m
[31m-        'audio/audio_manager_base.h',[m
[31m-        'audio/audio_output_controller.cc',[m
[31m-        'audio/audio_output_controller.h',[m
[31m-        'audio/audio_output_dispatcher.cc',[m
[31m-        'audio/audio_output_dispatcher.h',[m
[31m-        'audio/audio_output_dispatcher_impl.cc',[m
[31m-        'audio/audio_output_dispatcher_impl.h',[m
[31m-        'audio/audio_output_mixer.cc',[m
[31m-        'audio/audio_output_mixer.h',[m
[31m-        'audio/audio_output_proxy.cc',[m
[31m-        'audio/audio_output_proxy.h',[m
[31m-        'audio/audio_parameters.cc',[m
[31m-        'audio/audio_parameters.h',[m
[31m-        'audio/audio_util.cc',[m
[31m-        'audio/audio_util.h',[m
[31m-        'audio/cross_process_notification.cc',[m
[31m-        'audio/cross_process_notification.h',[m
[31m-        'audio/cross_process_notification_win.cc',[m
[31m-        'audio/cross_process_notification_posix.cc',[m
[31m-        'audio/fake_audio_input_stream.cc',[m
[31m-        'audio/fake_audio_input_stream.h',[m
[31m-        'audio/fake_audio_output_stream.cc',[m
[31m-        'audio/fake_audio_output_stream.h',[m
[31m-        'audio/linux/audio_manager_linux.cc',[m
[31m-        'audio/linux/audio_manager_linux.h',[m
[31m-        'audio/linux/alsa_input.cc',[m
[31m-        'audio/linux/alsa_input.h',[m
[31m-        'audio/linux/alsa_output.cc',[m
[31m-        'audio/linux/alsa_output.h',[m
[31m-        'audio/linux/alsa_util.cc',[m
[31m-        'audio/linux/alsa_util.h',[m
[31m-        'audio/linux/alsa_wrapper.cc',[m
[31m-        'audio/linux/alsa_wrapper.h',[m
[31m-        'audio/linux/cras_output.cc',[m
[31m-        'audio/linux/cras_output.h',[m
[31m-        'audio/openbsd/audio_manager_openbsd.cc',[m
[31m-        'audio/openbsd/audio_manager_openbsd.h',[m
[31m-        'audio/mac/audio_input_mac.cc',[m
[31m-        'audio/mac/audio_input_mac.h',[m
[31m-        'audio/mac/audio_low_latency_input_mac.cc',[m
[31m-        'audio/mac/audio_low_latency_input_mac.h',[m
[31m-        'audio/mac/audio_low_latency_output_mac.cc',[m
[31m-        'audio/mac/audio_low_latency_output_mac.h',[m
[31m-        'audio/mac/audio_manager_mac.cc',[m
[31m-        'audio/mac/audio_manager_mac.h',[m
[31m-        'audio/mac/audio_output_mac.cc',[m
[31m-        'audio/mac/audio_output_mac.h',[m
[31m-        'audio/null_audio_sink.cc',[m
[31m-        'audio/null_audio_sink.h',[m
[31m-        'audio/pulse/pulse_output.cc',[m
[31m-        'audio/pulse/pulse_output.h',[m
[31m-        'audio/sample_rates.cc',[m
[31m-        'audio/sample_rates.h',[m
[31m-        'audio/simple_sources.cc',[m
[31m-        'audio/simple_sources.h',[m
[31m-        'audio/win/audio_low_latency_input_win.cc',[m
[31m-        'audio/win/audio_low_latency_input_win.h',[m
[31m-        'audio/win/audio_low_latency_output_win.cc',[m
[31m-        'audio/win/audio_low_latency_output_win.h',[m
[31m-        'audio/win/audio_manager_win.cc',[m
[31m-        'audio/win/audio_manager_win.h',[m
[31m-        'audio/win/avrt_wrapper_win.cc',[m
[31m-        'audio/win/avrt_wrapper_win.h',[m
[31m-        'audio/win/device_enumeration_win.cc',[m
[31m-        'audio/win/device_enumeration_win.h',[m
[31m-        'audio/win/wavein_input_win.cc',[m
[31m-        'audio/win/wavein_input_win.h',[m
[31m-        'audio/win/waveout_output_win.cc',[m
[31m-        'audio/win/waveout_output_win.h',[m
[31m-        'base/android/media_jni_registrar.cc',[m
[31m-        'base/android/media_jni_registrar.h',[m
[31m-        'base/audio_decoder.cc',[m
[31m-        'base/audio_decoder.h',[m
[31m-        'base/audio_decoder_config.cc',[m
[31m-        'base/audio_decoder_config.h',[m
[31m-        'base/audio_renderer.h',[m
[31m-        'base/audio_renderer_mixer.cc',[m
[31m-        'base/audio_renderer_mixer.h',[m
[31m-        'base/audio_renderer_mixer_input.cc',[m
[31m-        'base/audio_renderer_mixer_input.h',[m
[31m-        'base/bitstream_buffer.h',[m
[31m-        'base/buffers.cc',[m
[31m-        'base/buffers.h',[m
[31m-        'base/byte_queue.cc',[m
[31m-        'base/byte_queue.h',[m
[31m-        'base/channel_layout.cc',[m
[31m-        'base/channel_layout.h',[m
[31m-        'base/clock.cc',[m
[31m-        'base/clock.h',[m
[31m-        'base/composite_filter.cc',[m
[31m-        'base/composite_filter.h',[m
[31m-        'base/data_buffer.cc',[m
[31m-        'base/data_buffer.h',[m
[31m-        'base/data_source.cc',[m
[31m-        'base/data_source.h',[m
[31m-        'base/decoder_buffer.cc',[m
[31m-        'base/decoder_buffer.h',[m
[31m-        'base/decrypt_config.cc',[m
[31m-        'base/decrypt_config.h',[m
[31m-        'base/decryptor.h',[m
[31m-        'base/decryptor_client.h',[m
[31m-        'base/demuxer.cc',[m
[31m-        'base/demuxer.h',[m
[31m-        'base/demuxer_stream.cc',[m
[31m-        'base/demuxer_stream.h',[m
[31m-        'base/djb2.cc',[m
[31m-        'base/djb2.h',[m
[31m-        'base/filter_collection.cc',[m
[31m-        'base/filter_collection.h',[m
[31m-        'base/filter_host.h',[m
[31m-        'base/filters.cc',[m
[31m-        'base/filters.h',[m
[31m-        'base/h264_bitstream_converter.cc',[m
[31m-        'base/h264_bitstream_converter.h',[m
[31m-        'base/media.h',[m
[31m-        'base/media_android.cc',[m
[31m-        'base/media_export.h',[m
[31m-        'base/media_log.cc',[m
[31m-        'base/media_log.h',[m
[31m-        'base/media_log_event.h',[m
[31m-        'base/media_posix.cc',[m
[31m-        'base/media_switches.cc',[m
[31m-        'base/media_switches.h',[m
[31m-        'base/media_win.cc',[m
[31m-        'base/message_loop_factory.cc',[m
[31m-        'base/message_loop_factory.h',[m
[31m-        'base/pipeline.cc',[m
[31m-        'base/pipeline.h',[m
[31m-        'base/pipeline_status.cc',[m
[31m-        'base/pipeline_status.h',[m
[31m-        'base/ranges.cc',[m
[31m-        'base/ranges.h',[m
[31m-        'base/seekable_buffer.cc',[m
[31m-        'base/seekable_buffer.h',[m
[31m-        'base/state_matrix.cc',[m
[31m-        'base/state_matrix.h',[m
[31m-        'base/stream_parser.cc',[m
[31m-        'base/stream_parser.h',[m
[31m-        'base/stream_parser_buffer.cc',[m
[31m-        'base/stream_parser_buffer.h',[m
[31m-        'base/video_decoder.cc',[m
[31m-        'base/video_decoder.h',[m
[31m-        'base/video_decoder_config.cc',[m
[31m-        'base/video_decoder_config.h',[m
[31m-        'base/video_frame.cc',[m
[31m-        'base/video_frame.h',[m
[31m-        'base/video_renderer.h',[m
[31m-        'base/video_util.cc',[m
[31m-        'base/video_util.h',[m
[31m-        'crypto/aes_decryptor.cc',[m
[31m-        'crypto/aes_decryptor.h',[m
[31m-        'ffmpeg/ffmpeg_common.cc',[m
[31m-        'ffmpeg/ffmpeg_common.h',[m
[31m-        'ffmpeg/file_protocol.cc',[m
[31m-        'ffmpeg/file_protocol.h',[m
[31m-        'filters/audio_file_reader.cc',[m
[31m-        'filters/audio_file_reader.h',[m
[31m-        'filters/audio_renderer_algorithm.cc',[m
[31m-        'filters/audio_renderer_algorithm.h',[m
[31m-        'filters/audio_renderer_impl.cc',[m
[31m-        'filters/audio_renderer_impl.h',[m
[31m-        'filters/bitstream_converter.cc',[m
[31m-        'filters/bitstream_converter.h',[m
[31m-        'filters/chunk_demuxer.cc',[m
[31m-        'filters/chunk_demuxer.h',[m
[31m-        'filters/chunk_demuxer_client.h',[m
[31m-        'filters/dummy_demuxer.cc',[m
[31m-        'filters/dummy_demuxer.h',[m
[31m-        'filters/ffmpeg_audio_decoder.cc',[m
[31m-        'filters/ffmpeg_audio_decoder.h',[m
[31m-        'filters/ffmpeg_demuxer.cc',[m
[31m-        'filters/ffmpeg_demuxer.h',[m
[31m-        'filters/ffmpeg_h264_bitstream_converter.cc',[m
[31m-        'filters/ffmpeg_h264_bitstream_converter.h',[m
[31m-        'filters/ffmpeg_glue.cc',[m
[31m-        'filters/ffmpeg_glue.h',[m
[31m-        'filters/ffmpeg_video_decoder.cc',[m
[31m-        'filters/ffmpeg_video_decoder.h',[m
[31m-        'filters/file_data_source.cc',[m
[31m-        'filters/file_data_source.h',[m
[31m-        'filters/gpu_video_decoder.cc',[m
[31m-        'filters/gpu_video_decoder.h',[m
[31m-        'filters/in_memory_url_protocol.cc',[m
[31m-        'filters/in_memory_url_protocol.h',[m
[31m-        'filters/source_buffer_stream.cc',[m
[31m-        'filters/source_buffer_stream.h',[m
[31m-        'filters/video_frame_generator.cc',[m
[31m-        'filters/video_frame_generator.h',[m
[31m-        'filters/video_renderer_base.cc',[m
[31m-        'filters/video_renderer_base.h',[m
[31m-        'video/capture/fake_video_capture_device.cc',[m
[31m-        'video/capture/fake_video_capture_device.h',[m
[31m-        'video/capture/linux/video_capture_device_linux.cc',[m
[31m-        'video/capture/linux/video_capture_device_linux.h',[m
[31m-        'video/capture/mac/video_capture_device_mac.h',[m
[31m-        'video/capture/mac/video_capture_device_mac.mm',[m
[31m-        'video/capture/mac/video_capture_device_qtkit_mac.h',[m
[31m-        'video/capture/mac/video_capture_device_qtkit_mac.mm',[m
[31m-        'video/capture/video_capture.h',[m
[31m-        'video/capture/video_capture_device.h',[m
[31m-        'video/capture/video_capture_device_dummy.cc',[m
[31m-        'video/capture/video_capture_device_dummy.h',[m
[31m-        'video/capture/video_capture_proxy.cc',[m
[31m-        'video/capture/video_capture_proxy.h',[m
[31m-        'video/capture/video_capture_types.h',[m
[31m-        'video/capture/win/filter_base_win.cc',[m
[31m-        'video/capture/win/filter_base_win.h',[m
[31m-        'video/capture/win/pin_base_win.cc',[m
[31m-        'video/capture/win/pin_base_win.h',[m
[31m-        'video/capture/win/sink_filter_observer_win.h',[m
[31m-        'video/capture/win/sink_filter_win.cc',[m
[31m-        'video/capture/win/sink_filter_win.h',[m
[31m-        'video/capture/win/sink_input_pin_win.cc',[m
[31m-        'video/capture/win/sink_input_pin_win.h',[m
[31m-        'video/capture/win/video_capture_device_win.cc',[m
[31m-        'video/capture/win/video_capture_device_win.h',[m
[31m-        'video/picture.cc',[m
[31m-        'video/picture.h',[m
[31m-        'video/video_decode_accelerator.cc',[m
[31m-        'video/video_decode_accelerator.h',[m
[31m-        'webm/webm_constants.h',[m
[31m-        'webm/webm_cluster_parser.cc',[m
[31m-        'webm/webm_cluster_parser.h',[m
[31m-        'webm/webm_content_encodings.cc',[m
[31m-        'webm/webm_content_encodings.h',[m
[31m-        'webm/webm_content_encodings_client.cc',[m
[31m-        'webm/webm_content_encodings_client.h',[m
[31m-        'webm/webm_info_parser.cc',[m
[31m-        'webm/webm_info_parser.h',[m
[31m-        'webm/webm_parser.cc',[m
[31m-        'webm/webm_parser.h',[m
[31m-        'webm/webm_stream_parser.cc',[m
[31m-        'webm/webm_stream_parser.h',[m
[31m-        'webm/webm_tracks_parser.cc',[m
[31m-        'webm/webm_tracks_parser.h',[m
[31m-      ],[m
[31m-      'direct_dependent_settings': {[m
[31m-        'include_dirs': [[m
[31m-          '..',[m
[31m-        ],[m
[31m-      },[m
[31m-      'conditions': [[m
[31m-        # Android doesn't use ffmpeg, so make the dependency conditional[m
[31m-        # and exclude the sources which depend on ffmpeg.[m
[31m-        ['OS != "android"', {[m
[31m-          'dependencies': [[m
[31m-            '../third_party/ffmpeg/ffmpeg.gyp:ffmpeg',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['OS == "android"', {[m
[31m-          'sources!': [[m
[31m-            'base/media_posix.cc',[m
[31m-            'ffmpeg/ffmpeg_common.cc',[m
[31m-            'ffmpeg/ffmpeg_common.h',[m
[31m-            'ffmpeg/file_protocol.cc',[m
[31m-            'ffmpeg/file_protocol.h',[m
[31m-            'filters/audio_file_reader.cc',[m
[31m-            'filters/audio_file_reader.h',[m
[31m-            'filters/bitstream_converter.cc',[m
[31m-            'filters/bitstream_converter.h',[m
[31m-            'filters/chunk_demuxer.cc',[m
[31m-            'filters/chunk_demuxer.h',[m
[31m-            'filters/chunk_demuxer_client.h',[m
[31m-            'filters/ffmpeg_audio_decoder.cc',[m
[31m-            'filters/ffmpeg_audio_decoder.h',[m
[31m-            'filters/ffmpeg_demuxer.cc',[m
[31m-            'filters/ffmpeg_demuxer.h',[m
[31m-            'filters/ffmpeg_h264_bitstream_converter.cc',[m
[31m-            'filters/ffmpeg_h264_bitstream_converter.h',[m
[31m-            'filters/ffmpeg_glue.cc',[m
[31m-            'filters/ffmpeg_glue.h',[m
[31m-            'filters/ffmpeg_video_decoder.cc',[m
[31m-            'filters/ffmpeg_video_decoder.h',[m
[31m-            'filters/gpu_video_decoder.cc',[m
[31m-            'filters/gpu_video_decoder.h',[m
[31m-            'webm/webm_cluster_parser.cc',[m
[31m-            'webm/webm_cluster_parser.h',[m
[31m-            'webm/webm_stream_parser.cc',[m
[31m-            'webm/webm_stream_parser.h',[m
[31m-          ],[m
[31m-        }],[m
[31m-        # The below 'android' condition were added temporarily and should be[m
[31m-        # removed in downstream, because there is no Java environment setup in[m
[31m-        # upstream yet.[m
[31m-        ['OS == "android"', {[m
[31m-          'sources!':[[m
[31m-            'audio/android/audio_track_output_android.cc',[m
[31m-          ],[m
[31m-          'sources':[[m
[31m-            'audio/android/audio_track_output_stub_android.cc',[m
[31m-          ],[m
[31m-          'link_settings': {[m
[31m-            'libraries': [[m
[31m-              '-lOpenSLES',[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-        ['OS=="linux" or OS=="freebsd" or OS=="solaris"', {[m
[31m-          'link_settings': {[m
[31m-            'libraries': [[m
[31m-              '-lasound',[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-        ['OS=="openbsd"', {[m
[31m-          'sources/': [ ['exclude', '/alsa_' ],[m
[31m-                        ['exclude', '/audio_manager_linux' ] ],[m
[31m-          'link_settings': {[m
[31m-            'libraries': [[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-        ['OS!="openbsd"', {[m
[31m-          'sources!': [[m
[31m-            'audio/openbsd/audio_manager_openbsd.cc',[m
[31m-            'audio/openbsd/audio_manager_openbsd.h',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['OS=="linux"', {[m
[31m-          'variables': {[m
[31m-            'conditions': [[m
[31m-              ['sysroot!=""', {[m
[31m-                'pkg-config': '../build/linux/pkg-config-wrapper "<(sysroot)" "<(target_arch)"',[m
[31m-              }, {[m
[31m-                'pkg-config': 'pkg-config'[m
[31m-              }],[m
[31m-            ],[m
[31m-          },[m
[31m-          'conditions': [[m
[31m-            ['use_cras == 1', {[m
[31m-              'cflags': [[m
[31m-                '<!@(<(pkg-config) --cflags libcras)',[m
[31m-              ],[m
[31m-              'link_settings': {[m
[31m-                'libraries': [[m
[31m-                  '<!@(<(pkg-config) --libs libcras)',[m
[31m-                ],[m
[31m-              },[m
[31m-              'defines': [[m
[31m-                'USE_CRAS',[m
[31m-              ],[m
[31m-            }, {  # else: use_cras == 0[m
[31m-              'sources!': [[m
[31m-                'audio/linux/cras_output.cc',[m
[31m-                'audio/linux/cras_output.h',[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['os_posix == 1', {[m
[31m-          'conditions': [[m
[31m-            ['use_pulseaudio == 1', {[m
[31m-              'cflags': [[m
[31m-                '<!@(pkg-config --cflags libpulse)',[m
[31m-              ],[m
[31m-              'link_settings': {[m
[31m-                'libraries': [[m
[31m-                  '<!@(pkg-config --libs-only-l libpulse)',[m
[31m-                ],[m
[31m-              },[m
[31m-              'defines': [[m
[31m-                'USE_PULSEAUDIO',[m
[31m-              ],[m
[31m-            }, {  # else: use_pulseaudio == 0[m
[31m-              'sources!': [[m
[31m-                'audio/pulse/pulse_output.cc',[m
[31m-                'audio/pulse/pulse_output.h',[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['os_posix == 1 and OS != "android"', {[m
[31m-          # Video capture isn't supported in Android yet.[m
[31m-          'sources!': [[m
[31m-            'video/capture/video_capture_device_dummy.cc',[m
[31m-            'video/capture/video_capture_device_dummy.h',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['OS=="mac"', {[m
[31m-          'link_settings': {[m
[31m-            'libraries': [[m
[31m-              '$(SDKROOT)/System/Library/Frameworks/AudioUnit.framework',[m
[31m-              '$(SDKROOT)/System/Library/Frameworks/AudioToolbox.framework',[m
[31m-              '$(SDKROOT)/System/Library/Frameworks/CoreAudio.framework',[m
[31m-              '$(SDKROOT)/System/Library/Frameworks/CoreVideo.framework',[m
[31m-              '$(SDKROOT)/System/Library/Frameworks/QTKit.framework',[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-        ['OS=="win"', {[m
[31m-          'sources!': [[m
[31m-            'audio/pulse/pulse_output.cc',[m
[31m-            'audio/pulse/pulse_output.h',[m
[31m-            'video/capture/video_capture_device_dummy.cc',[m
[31m-            'video/capture/video_capture_device_dummy.h',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['proprietary_codecs==1 or branding=="Chrome"', {[m
[31m-          'sources': [[m
[31m-            'mp4/avc.cc',[m
[31m-            'mp4/avc.h',[m
[31m-            'mp4/box_definitions.cc',[m
[31m-            'mp4/box_definitions.h',[m
[31m-            'mp4/box_reader.cc',[m
[31m-            'mp4/box_reader.h',[m
[31m-            'mp4/cenc.cc',[m
[31m-            'mp4/cenc.h',[m
[31m-            'mp4/mp4_stream_parser.cc',[m
[31m-            'mp4/mp4_stream_parser.h',[m
[31m-            'mp4/offset_byte_queue.cc',[m
[31m-            'mp4/offset_byte_queue.h',[m
[31m-            'mp4/track_run_iterator.cc',[m
[31m-            'mp4/track_run_iterator.h',[m
[31m-          ],[m
[31m-        }],[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'yuv_convert',[m
[31m-      'type': 'static_library',[m
[31m-      'include_dirs': [[m
[31m-        '..',[m
[31m-      ],[m
[31m-      'conditions': [[m
[31m-        ['order_profiling != 0', {[m
[31m-          'target_conditions' : [[m
[31m-            ['_toolset=="target"', {[m
[31m-              'cflags!': [ '-finstrument-functions' ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        }],[m
[31m-        [ 'target_arch == "ia32" or target_arch == "x64"', {[m
[31m-          'dependencies': [[m
[31m-            'yuv_convert_simd_x86',[m
[31m-          ],[m
[31m-        }],[m
[31m-        [ 'target_arch == "arm"', {[m
[31m-          'dependencies': [[m
[31m-            'yuv_convert_simd_arm',[m
[31m-          ],[m
[31m-        }],[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'base/yuv_convert.cc',[m
[31m-        'base/yuv_convert.h',[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'yuv_convert_simd_x86',[m
[31m-      'type': 'static_library',[m
[31m-      'include_dirs': [[m
[31m-        '..',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'base/simd/convert_rgb_to_yuv_c.cc',[m
[31m-        'base/simd/convert_rgb_to_yuv_sse2.cc',[m
[31m-        'base/simd/convert_rgb_to_yuv_ssse3.asm',[m
[31m-        'base/simd/convert_rgb_to_yuv_ssse3.cc',[m
[31m-        'base/simd/convert_rgb_to_yuv_ssse3.inc',[m
[31m-        'base/simd/convert_yuv_to_rgb_c.cc',[m
[31m-        'base/simd/convert_yuv_to_rgb_x86.cc',[m
[31m-        'base/simd/convert_yuv_to_rgb_mmx.asm',[m
[31m-        'base/simd/convert_yuv_to_rgb_mmx.inc',[m
[31m-        'base/simd/convert_yuv_to_rgb_sse.asm',[m
[31m-        'base/simd/filter_yuv.h',[m
[31m-        'base/simd/filter_yuv_c.cc',[m
[31m-        'base/simd/filter_yuv_mmx.cc',[m
[31m-        'base/simd/filter_yuv_sse2.cc',[m
[31m-        'base/simd/linear_scale_yuv_to_rgb_mmx.asm',[m
[31m-        'base/simd/linear_scale_yuv_to_rgb_mmx.inc',[m
[31m-        'base/simd/linear_scale_yuv_to_rgb_sse.asm',[m
[31m-        'base/simd/scale_yuv_to_rgb_mmx.asm',[m
[31m-        'base/simd/scale_yuv_to_rgb_mmx.inc',[m
[31m-        'base/simd/scale_yuv_to_rgb_sse.asm',[m
[31m-        'base/simd/yuv_to_rgb_table.cc',[m
[31m-        'base/simd/yuv_to_rgb_table.h',[m
[31m-      ],[m
[31m-      'conditions': [[m
[31m-        ['order_profiling != 0', {[m
[31m-          'target_conditions' : [[m
[31m-            ['_toolset=="target"', {[m
[31m-              'cflags!': [ '-finstrument-functions' ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        }],[m
[31m-        [ 'target_arch == "x64"', {[m
[31m-          # Source files optimized for X64 systems.[m
[31m-          'sources': [[m
[31m-            'base/simd/linear_scale_yuv_to_rgb_mmx_x64.asm',[m
[31m-            'base/simd/scale_yuv_to_rgb_sse2_x64.asm',[m
[31m-          ],[m
[31m-        }],[m
[31m-        [ 'os_posix == 1 and OS != "mac" and OS != "android"', {[m
[31m-          'cflags': [[m
[31m-            '-msse2',[m
[31m-          ],[m
[31m-        }],[m
[31m-        [ 'OS == "mac"', {[m
[31m-          'configurations': {[m
[31m-            'Debug': {[m
[31m-              'xcode_settings': {[m
[31m-                # gcc on the mac builds horribly unoptimized sse code in debug[m
[31m-                # mode. Since this is rarely going to be debugged, run with full[m
[31m-                # optimizations in Debug as well as Release.[m
[31m-                'GCC_OPTIMIZATION_LEVEL': '3',  # -O3[m
[31m-               },[m
[31m-             },[m
[31m-          },[m
[31m-        }],[m
[31m-        [ 'OS=="win"', {[m
[31m-          'variables': {[m
[31m-            'yasm_flags': [[m
[31m-              '-DWIN32',[m
[31m-              '-DMSVC',[m
[31m-              '-DCHROMIUM',[m
[31m-              '-Isimd',[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-        [ 'OS=="mac"', {[m
[31m-          'variables': {[m
[31m-            'yasm_flags': [[m
[31m-              '-DPREFIX',[m
[31m-              '-DMACHO',[m
[31m-              '-DCHROMIUM',[m
[31m-              '-Isimd',[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-        [ 'os_posix==1 and OS!="mac"', {[m
[31m-          'variables': {[m
[31m-            'conditions': [[m
[31m-              [ 'target_arch=="ia32"', {[m
[31m-                'yasm_flags': [[m
[31m-                  '-DX86_32',[m
[31m-                  '-DELF',[m
[31m-                  '-DCHROMIUM',[m
[31m-                  '-Isimd',[m
[31m-                ],[m
[31m-              }, {[m
[31m-                'yasm_flags': [[m
[31m-                  '-DARCH_X86_64',[m
[31m-                  '-DELF',[m
[31m-                  '-DPIC',[m
[31m-                  '-DCHROMIUM',[m
[31m-                  '-Isimd',[m
[31m-                ],[m
[31m-              }],[m
[31m-            ],[m
[31m-          },[m
[31m-        }],[m
[31m-      ],[m
[31m-      'variables': {[m
[31m-        'yasm_output_path': '<(SHARED_INTERMEDIATE_DIR)/media',[m
[31m-      },[m
[31m-      'msvs_2010_disable_uldi_when_referenced': 1,[m
[31m-      'includes': [[m
[31m-        '../third_party/yasm/yasm_compile.gypi',[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'yuv_convert_simd_arm',[m
[31m-      'type': 'static_library',[m
[31m-      'include_dirs': [[m
[31m-        '..',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'base/simd/convert_rgb_to_yuv_c.cc',[m
[31m-        'base/simd/convert_rgb_to_yuv.h',[m
[31m-        'base/simd/convert_yuv_to_rgb_c.cc',[m
[31m-        'base/simd/convert_yuv_to_rgb.h',[m
[31m-        'base/simd/filter_yuv.h',[m
[31m-        'base/simd/filter_yuv_c.cc',[m
[31m-        'base/simd/yuv_to_rgb_table.cc',[m
[31m-        'base/simd/yuv_to_rgb_table.h',[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'media_unittests',[m
[31m-      'type': 'executable',[m
[31m-      'dependencies': [[m
[31m-        'media',[m
[31m-        'media_test_support',[m
[31m-        'yuv_convert',[m
[31m-        '../base/base.gyp:base',[m
[31m-        '../base/base.gyp:base_i18n',[m
[31m-        '../base/base.gyp:test_support_base',[m
[31m-        '../testing/gmock.gyp:gmock',[m
[31m-        '../testing/gtest.gyp:gtest',[m
[31m-        '../ui/ui.gyp:ui',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'audio/async_socket_io_handler_unittest.cc',[m
[31m-        'audio/audio_input_controller_unittest.cc',[m
[31m-        'audio/audio_input_device_unittest.cc',[m
[31m-        'audio/audio_input_unittest.cc',[m
[31m-        'audio/audio_input_volume_unittest.cc',[m
[31m-        'audio/audio_low_latency_input_output_unittest.cc',[m
[31m-        'audio/audio_output_controller_unittest.cc',[m
[31m-        'audio/audio_output_proxy_unittest.cc',[m
[31m-        'audio/audio_parameters_unittest.cc',[m
[31m-        'audio/audio_util_unittest.cc',[m
[31m-        'audio/cross_process_notification_unittest.cc',[m
[31m-        'audio/linux/alsa_output_unittest.cc',[m
[31m-        'audio/mac/audio_low_latency_input_mac_unittest.cc',[m
[31m-        'audio/mac/audio_output_mac_unittest.cc',[m
[31m-        'audio/simple_sources_unittest.cc',[m
[31m-        'audio/win/audio_low_latency_input_win_unittest.cc',[m
[31m-        'audio/win/audio_low_latency_output_win_unittest.cc',[m
[31m-        'audio/win/audio_output_win_unittest.cc',[m
[31m-        'base/audio_renderer_mixer_unittest.cc',[m
[31m-        'base/audio_renderer_mixer_input_unittest.cc',[m
[31m-        'base/buffers_unittest.cc',[m
[31m-        'base/clock_unittest.cc',[m
[31m-        'base/composite_filter_unittest.cc',[m
[31m-        'base/data_buffer_unittest.cc',[m
[31m-        'base/decoder_buffer_unittest.cc',[m
[31m-        'base/djb2_unittest.cc',[m
[31m-        'base/fake_audio_render_callback.cc',[m
[31m-        'base/fake_audio_render_callback.h',[m
[31m-        'base/filter_collection_unittest.cc',[m
[31m-        'base/h264_bitstream_converter_unittest.cc',[m
[31m-        'base/pipeline_unittest.cc',[m
[31m-        'base/ranges_unittest.cc',[m
[31m-        'base/run_all_unittests.cc',[m
[31m-        'base/seekable_buffer_unittest.cc',[m
[31m-        'base/state_matrix_unittest.cc',[m
[31m-        'base/test_data_util.cc',[m
[31m-        'base/test_data_util.h',[m
[31m-        'base/video_frame_unittest.cc',[m
[31m-        'base/video_util_unittest.cc',[m
[31m-        'base/yuv_convert_unittest.cc',[m
[31m-        'crypto/aes_decryptor_unittest.cc',[m
[31m-        'ffmpeg/ffmpeg_common_unittest.cc',[m
[31m-        'filters/audio_renderer_algorithm_unittest.cc',[m
[31m-        'filters/audio_renderer_impl_unittest.cc',[m
[31m-        'filters/bitstream_converter_unittest.cc',[m
[31m-        'filters/chunk_demuxer_unittest.cc',[m
[31m-        'filters/ffmpeg_audio_decoder_unittest.cc',[m
[31m-        'filters/ffmpeg_decoder_unittest.h',[m
[31m-        'filters/ffmpeg_demuxer_unittest.cc',[m
[31m-        'filters/ffmpeg_glue_unittest.cc',[m
[31m-        'filters/ffmpeg_h264_bitstream_converter_unittest.cc',[m
[31m-        'filters/ffmpeg_video_decoder_unittest.cc',[m
[31m-        'filters/file_data_source_unittest.cc',[m
[31m-        'filters/pipeline_integration_test.cc',[m
[31m-        'filters/pipeline_integration_test_base.cc',[m
[31m-        'filters/source_buffer_stream_unittest.cc',[m
[31m-        'filters/video_renderer_base_unittest.cc',[m
[31m-        'video/capture/video_capture_device_unittest.cc',[m
[31m-        'webm/cluster_builder.cc',[m
[31m-        'webm/cluster_builder.h',[m
[31m-        'webm/webm_cluster_parser_unittest.cc',[m
[31m-        'webm/webm_content_encodings_client_unittest.cc',[m
[31m-        'webm/webm_parser_unittest.cc',[m
[31m-      ],[m
[31m-      'conditions': [[m
[31m-        ['os_posix==1 and OS!="mac"', {[m
[31m-          'conditions': [[m
[31m-            ['linux_use_tcmalloc==1', {[m
[31m-              'dependencies': [[m
[31m-                '../base/allocator/allocator.gyp:allocator',[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['OS != "android"', {[m
[31m-          'dependencies': [[m
[31m-            '../third_party/ffmpeg/ffmpeg.gyp:ffmpeg',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['OS == "android"', {[m
[31m-          'sources!': [[m
[31m-            'audio/audio_input_volume_unittest.cc',[m
[31m-            'base/test_data_util.cc',[m
[31m-            'base/test_data_util.h',[m
[31m-            'ffmpeg/ffmpeg_common_unittest.cc',[m
[31m-            'filters/ffmpeg_audio_decoder_unittest.cc',[m
[31m-            'filters/bitstream_converter_unittest.cc',[m
[31m-            'filters/chunk_demuxer_unittest.cc',[m
[31m-            'filters/ffmpeg_demuxer_unittest.cc',[m
[31m-            'filters/ffmpeg_glue_unittest.cc',[m
[31m-            'filters/ffmpeg_h264_bitstream_converter_unittest.cc',[m
[31m-            'filters/ffmpeg_video_decoder_unittest.cc',[m
[31m-            'filters/pipeline_integration_test.cc',[m
[31m-            'filters/pipeline_integration_test_base.cc',[m
[31m-            'mp4/mp4_stream_parser_unittest.cc',[m
[31m-            'webm/webm_cluster_parser_unittest.cc',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['OS == "linux"', {[m
[31m-          'conditions': [[m
[31m-            ['use_cras == 1', {[m
[31m-              'sources': [[m
[31m-                'audio/linux/cras_output_unittest.cc',[m
[31m-              ],[m
[31m-              'defines': [[m
[31m-                'USE_CRAS',[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        }],[m
[31m-        [ 'target_arch=="ia32" or target_arch=="x64"', {[m
[31m-          'sources': [[m
[31m-            'base/simd/convert_rgb_to_yuv_unittest.cc',[m
[31m-          ],[m
[31m-        }],[m
[31m-        ['proprietary_codecs==1 or branding=="Chrome"', {[m
[31m-          'sources': [[m
[31m-            'mp4/avc_unittest.cc',[m
[31m-            'mp4/box_reader_unittest.cc',[m
[31m-            'mp4/mp4_stream_parser_unittest.cc',[m
[31m-            'mp4/offset_byte_queue_unittest.cc',[m
[31m-          ],[m
[31m-        }],[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'media_test_support',[m
[31m-      'type': 'static_library',[m
[31m-      'dependencies': [[m
[31m-        'media',[m
[31m-        '../base/base.gyp:base',[m
[31m-        '../testing/gmock.gyp:gmock',[m
[31m-        '../testing/gtest.gyp:gtest',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'audio/test_audio_input_controller_factory.cc',[m
[31m-        'audio/test_audio_input_controller_factory.h',[m
[31m-        'base/mock_callback.cc',[m
[31m-        'base/mock_callback.h',[m
[31m-        'base/mock_data_source_host.cc',[m
[31m-        'base/mock_data_source_host.h',[m
[31m-        'base/mock_demuxer_host.cc',[m
[31m-        'base/mock_demuxer_host.h',[m
[31m-        'base/mock_filter_host.cc',[m
[31m-        'base/mock_filter_host.h',[m
[31m-        'base/mock_filters.cc',[m
[31m-        'base/mock_filters.h',[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'scaler_bench',[m
[31m-      'type': 'executable',[m
[31m-      'dependencies': [[m
[31m-        'media',[m
[31m-        'yuv_convert',[m
[31m-        '../base/base.gyp:base',[m
[31m-        '../skia/skia.gyp:skia',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'tools/scaler_bench/scaler_bench.cc',[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'qt_faststart',[m
[31m-      'type': 'executable',[m
[31m-      'sources': [[m
[31m-        'tools/qt_faststart/qt_faststart.c'[m
[31m-      ],[m
[31m-    },[m
[31m-    {[m
[31m-      'target_name': 'seek_tester',[m
[31m-      'type': 'executable',[m
[31m-      'dependencies': [[m
[31m-        'media',[m
[31m-        '../base/base.gyp:base',[m
[31m-      ],[m
[31m-      'sources': [[m
[31m-        'tools/seek_tester/seek_tester.cc',[m
[31m-      ],[m
[31m-    },[m
[31m-  ],[m
[31m-  'conditions': [[m
[31m-    ['OS=="win"', {[m
[31m-      'targets': [[m
[31m-        {[m
[31m-          'target_name': 'player_wtl',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            'yuv_convert',[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../base/third_party/dynamic_annotations/dynamic_annotations.gyp:dynamic_annotations',[m
[31m-            '../ui/ui.gyp:ui',[m
[31m-          ],[m
[31m-          'include_dirs': [[m
[31m-            '<(DEPTH)/third_party/wtl/include',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'tools/player_wtl/list.h',[m
[31m-            'tools/player_wtl/mainfrm.h',[m
[31m-            'tools/player_wtl/movie.cc',[m
[31m-            'tools/player_wtl/movie.h',[m
[31m-            'tools/player_wtl/player_wtl.cc',[m
[31m-            'tools/player_wtl/player_wtl.rc',[m
[31m-            'tools/player_wtl/props.h',[m
[31m-            'tools/player_wtl/seek.h',[m
[31m-            'tools/player_wtl/resource.h',[m
[31m-            'tools/player_wtl/view.h',[m
[31m-          ],[m
[31m-          'msvs_settings': {[m
[31m-            'VCLinkerTool': {[m
[31m-              'SubSystem': '2',         # Set /SUBSYSTEM:WINDOWS[m
[31m-            },[m
[31m-          },[m
[31m-          'defines': [[m
[31m-            '_CRT_SECURE_NO_WARNINGS=1',[m
[31m-          ],[m
[31m-        },[m
[31m-      ],[m
[31m-    }],[m
[31m-    ['OS == "win" or toolkit_uses_gtk == 1', {[m
[31m-      'targets': [[m
[31m-        {[m
[31m-          'target_name': 'shader_bench',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            'yuv_convert',[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../ui/gl/gl.gyp:gl',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'tools/shader_bench/shader_bench.cc',[m
[31m-            'tools/shader_bench/cpu_color_painter.cc',[m
[31m-            'tools/shader_bench/cpu_color_painter.h',[m
[31m-            'tools/shader_bench/gpu_color_painter.cc',[m
[31m-            'tools/shader_bench/gpu_color_painter.h',[m
[31m-            'tools/shader_bench/gpu_painter.cc',[m
[31m-            'tools/shader_bench/gpu_painter.h',[m
[31m-            'tools/shader_bench/painter.cc',[m
[31m-            'tools/shader_bench/painter.h',[m
[31m-            'tools/shader_bench/window.cc',[m
[31m-            'tools/shader_bench/window.h',[m
[31m-          ],[m
[31m-          'conditions': [[m
[31m-            ['toolkit_uses_gtk == 1', {[m
[31m-              'dependencies': [[m
[31m-                '../build/linux/system.gyp:gtk',[m
[31m-              ],[m
[31m-              'sources': [[m
[31m-                'tools/shader_bench/window_linux.cc',[m
[31m-              ],[m
[31m-            }],[m
[31m-            ['OS=="win"', {[m
[31m-              'dependencies': [[m
[31m-                '../third_party/angle/src/build_angle.gyp:libEGL',[m
[31m-                '../third_party/angle/src/build_angle.gyp:libGLESv2',[m
[31m-              ],[m
[31m-              'sources': [[m
[31m-                'tools/shader_bench/window_win.cc',[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        },[m
[31m-      ],[m
[31m-    }],[m
[31m-    ['OS == "linux" and target_arch != "arm"', {[m
[31m-      'targets': [[m
[31m-        {[m
[31m-          'target_name': 'tile_render_bench',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../ui/gl/gl.gyp:gl',[m
[31m-          ],[m
[31m-          'libraries': [[m
[31m-            '-lGL',[m
[31m-            '-ldl',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'tools/tile_render_bench/tile_render_bench.cc',[m
[31m-          ],[m
[31m-        },[m
[31m-      ],[m
[31m-    }],[m
[31m-    ['os_posix == 1 and OS != "mac" and OS != "android"', {[m
[31m-      'targets': [[m
[31m-        {[m
[31m-          'target_name': 'player_x11',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            'yuv_convert',[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../ui/gl/gl.gyp:gl',[m
[31m-          ],[m
[31m-          'link_settings': {[m
[31m-            'libraries': [[m
[31m-              '-ldl',[m
[31m-              '-lX11',[m
[31m-              '-lXrender',[m
[31m-              '-lXext',[m
[31m-            ],[m
[31m-          },[m
[31m-          'sources': [[m
[31m-            'tools/player_x11/data_source_logger.cc',[m
[31m-            'tools/player_x11/data_source_logger.h',[m
[31m-            'tools/player_x11/gl_video_renderer.cc',[m
[31m-            'tools/player_x11/gl_video_renderer.h',[m
[31m-            'tools/player_x11/player_x11.cc',[m
[31m-            'tools/player_x11/x11_video_renderer.cc',[m
[31m-            'tools/player_x11/x11_video_renderer.h',[m
[31m-          ],[m
[31m-        },[m
[31m-      ],[m
[31m-    }],[m
[31m-    ['OS == "android"', {[m
[31m-      'targets': [[m
[31m-        {[m
[31m-          'target_name': 'player_android',[m
[31m-          'type': 'static_library',[m
[31m-          'sources': [[m
[31m-            'base/android/media_player_bridge.cc',[m
[31m-            'base/android/media_player_bridge.h',[m
[31m-          ],[m
[31m-          'dependencies': [[m
[31m-            '../base/base.gyp:base',[m
[31m-          ],[m
[31m-          'include_dirs': [[m
[31m-            '<(SHARED_INTERMEDIATE_DIR)/media',[m
[31m-          ],[m
[31m-          'actions': [[m
[31m-            {[m
[31m-              'action_name': 'generate-jni-headers',[m
[31m-              'inputs': [[m
[31m-                '../base/android/jni_generator/jni_generator.py',[m
[31m-                'base/android/java/src/org/chromium/media/MediaPlayerListener.java',[m
[31m-              ],[m
[31m-              'outputs': [[m
[31m-                '<(SHARED_INTERMEDIATE_DIR)/media/jni/media_player_listener_jni.h',[m
[31m-              ],[m
[31m-              'action': [[m
[31m-                'python',[m
[31m-                '<(DEPTH)/base/android/jni_generator/jni_generator.py',[m
[31m-                '-o',[m
[31m-                '<@(_inputs)',[m
[31m-                '<@(_outputs)',[m
[31m-              ],[m
[31m-            },[m
[31m-          ],[m
[31m-        },[m
[31m-        {[m
[31m-          'target_name': 'media_java',[m
[31m-          'type': 'none',[m
[31m-          'dependencies': [ '../base/base.gyp:base_java' ],[m
[31m-          'variables': {[m
[31m-            'package_name': 'media',[m
[31m-            'java_in_dir': 'base/android/java',[m
[31m-          },[m
[31m-          'includes': [ '../build/java.gypi' ],[m
[31m-        },[m
[31m-[m
[31m-      ],[m
[31m-    }, { # OS != "android"'[m
[31m-      # Android does not use ffmpeg, so disable the targets which require it.[m
[31m-      'targets': [[m
[31m-        {[m
[31m-          'target_name': 'ffmpeg_unittests',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            'media_test_support',[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../base/base.gyp:base_i18n',[m
[31m-            '../base/base.gyp:test_support_base',[m
[31m-            '../base/base.gyp:test_support_perf',[m
[31m-            '../testing/gtest.gyp:gtest',[m
[31m-            '../third_party/ffmpeg/ffmpeg.gyp:ffmpeg',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'ffmpeg/ffmpeg_unittest.cc',[m
[31m-          ],[m
[31m-          'conditions': [[m
[31m-            ['toolkit_uses_gtk == 1', {[m
[31m-              'dependencies': [[m
[31m-                # Needed for the following #include chain:[m
[31m-                #   base/run_all_unittests.cc[m
[31m-                #   ../base/test_suite.h[m
[31m-                #   gtk/gtk.h[m
[31m-                '../build/linux/system.gyp:gtk',[m
[31m-              ],[m
[31m-              'conditions': [[m
[31m-                ['linux_use_tcmalloc==1', {[m
[31m-                  'dependencies': [[m
[31m-                    '../base/allocator/allocator.gyp:allocator',[m
[31m-                  ],[m
[31m-                }],[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        },[m
[31m-        {[m
[31m-          'target_name': 'ffmpeg_regression_tests',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            'media_test_support',[m
[31m-            '../base/base.gyp:test_support_base',[m
[31m-            '../testing/gmock.gyp:gmock',[m
[31m-            '../testing/gtest.gyp:gtest',[m
[31m-            '../third_party/ffmpeg/ffmpeg.gyp:ffmpeg',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'base/test_data_util.cc',[m
[31m-            'base/run_all_unittests.cc',[m
[31m-            'ffmpeg/ffmpeg_regression_tests.cc',[m
[31m-            'filters/pipeline_integration_test_base.cc',[m
[31m-          ],[m
[31m-          'conditions': [[m
[31m-            ['os_posix==1 and OS!="mac"', {[m
[31m-              'conditions': [[m
[31m-                ['linux_use_tcmalloc==1', {[m
[31m-                  'dependencies': [[m
[31m-                    '../base/allocator/allocator.gyp:allocator',[m
[31m-                  ],[m
[31m-                }],[m
[31m-              ],[m
[31m-            }],[m
[31m-          ],[m
[31m-        },[m
[31m-        {[m
[31m-          'target_name': 'ffmpeg_tests',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../third_party/ffmpeg/ffmpeg.gyp:ffmpeg',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'test/ffmpeg_tests/ffmpeg_tests.cc',[m
[31m-          ],[m
[31m-        },[m
[31m-        {[m
[31m-          'target_name': 'media_bench',[m
[31m-          'type': 'executable',[m
[31m-          'dependencies': [[m
[31m-            'media',[m
[31m-            '../base/base.gyp:base',[m
[31m-            '../third_party/ffmpeg/ffmpeg.gyp:ffmpeg',[m
[31m-          ],[m
[31m-          'sources': [[m
[31m-            'tools/media_bench/media_bench.cc',[m
[31m-          ],[m
[31m-        },[m
[31m-      ],[m
[31m-    }][m
[31m-  ],[m
[31m-}[m
[1mdiff --git a/.pnpm-store/v3/files/00/06c00da28be831451653843ed226ed8c4fb599f62810df8497804d88f756ac5a03d23b495b0adb01b1e04277cc98a5f867ca433e8a539cf119166b78311e10 b/.pnpm-store/v3/files/00/06c00da28be831451653843ed226ed8c4fb599f62810df8497804d88f756ac5a03d23b495b0adb01b1e04277cc98a5f867ca433e8a539cf119166b78311e10[m
[1mdeleted file mode 100644[m
[1mindex 3fd4395f..00000000[m
[1m--- a/.pnpm-store/v3/files/00/06c00da28be831451653843ed226ed8c4fb599f62810df8497804d88f756ac5a03d23b495b0adb01b1e04277cc98a5f867ca433e8a539cf119166b78311e10[m
[1m+++ /dev/null[m
[36m@@ -1,17 +0,0 @@[m
[31m-"use strict";[m
[31m-[m
[31m-Object.defineProperty(exports, "__esModule", {[m
[31m-  value: true[m
[31m-});[m
[31m-exports.default = void 0;[m
[31m-exports.getDialogTitleUtilityClass = getDialogTitleUtilityClass;[m
[31m-[m
[31m-var _base = require("@mui/base");[m
[31m-[m
[31m-function getDialogTitleUtilityClass(slot) {[m
[31m-  return (0, _base.generateUtilityClass)('MuiDialogTitle', slot);[m
[31m-}[m
[31m-[m
[31m-const dialogTitleClasses = (0, _base.generateUtilityClasses)('MuiDialogTitle', ['root']);[m
[31m-var _default = dialogTitleClasses;[m
[31m-exports.default = _default;[m
\ No newline at end of file[m
[1mdiff --git a/.pnpm-store/v3/files/00/088e07cbda2e84cda4ed2031f9ae8ad0227a9445fd4c94b4e83e5722a15bf6cce19737f9f5e02c5fa4deb683f1364b59011c22405739ae2213ab2f4d429a55 b/.pnpm-store/v3/files/00/088e07cbda2e84cda4ed2031f9ae8ad0227a9445fd4c94b4e83e5722a15bf6cce19737f9f5e02c5fa4deb683f1364b59011c22405739ae2213ab2f4d429a55[m
[1mdeleted file mode 100644[m
[1mindex fc9fdc8a..00000000[m
[1m--- a/.pnpm-store/v3/files/00/088e07cbda2e84cda4ed2031f9ae8ad0227a9445fd4c94b4e83e5722a15bf6cce19737f9f5e02c5fa4deb683f1364b59011c22405739ae2213ab2f4d429a55[m
[1m+++ /dev/null[m
[36m@@ -1,145 +0,0 @@[m
[31m-"use strict";[m
[31m-[m
[31m-Object.defineProperty(exports, "__esModule", {[m
[31m-  value: true[m
[31m-});[m
[31m-exports.default = void 0;[m
[31m-[m
[31m-var _index = _interopRequireDefault(require("../../../_lib/buildLocalizeFn/index.js"));[m
[31m-[m
[31m-function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }[m
[31m-[m
[31m-var eraValues = {[m
[31m-  narrow: ['v.Chr.', 'n.Chr.'],[m
[31m-  abbreviated: ['v.Chr.', 'n.Chr.'],[m
[31m-  wide: ['vor Christus', 'nach Christus'][m
[31m-};[m
[31m-var quarterValues = {[m
[31m-  narrow: ['1', '2', '3', '4'],[m
[31m-  abbreviated: ['Q1', 'Q2', 'Q3', 'Q4'],[m
[31m-  wide: ['1. Quartal', '2. Quartal', '3. Quartal', '4. Quartal'][m
[31m-}; // Note: in German, the names of days of the week and months are capitalized.[m
[31m-// If you are making a new locale based on this one, check if the same is true for the language you're working on.[m
[31m-// Generally, formatted dates should look like they are in the middle of a sentence,[m
[31m-// e.g. in Spanish language the weekdays and months should be in the lowercase.[m
[31m-[m
[31m-var monthValues = {[m
[31m-  narrow: ['J', 'F', 'M', 'A', 'M', 'J', 'J', 'A', 'S', 'O', 'N', 'D'],[m
[31m-  abbreviated: ['Jan', 'Feb', 'Mär', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dez'],[m
[31m-  wide: ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'][m
[31m-}; // https://st.unicode.org/cldr-apps/v#/de/Gregorian/[m
[31m-[m
[31m-var formattingMonthValues = {[m
[31m-  narrow: monthValues.narrow,[m
[31m-  abbreviated: ['Jan.', 'Feb.', 'März', 'Apr.', 'Mai', 'Juni', 'Juli', 'Aug.', 'Sep.', 'Okt.', 'Nov.', 'Dez.'],[m
[31m-  wide: monthValues.wide[m
[31m-};[m
[31m-var dayValues = {[m
[31m-  narrow: ['S', 'M', 'D', 'M', 'D', 'F', 'S'],[m
[31m-  short: ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'],[m
[31m-  abbreviated: ['So.', 'Mo.', 'Di.', 'Mi.', 'Do.', 'Fr.', 'Sa.'],[m
[31m-  wide: ['Sonntag', 'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag'][m
[31m-}; // https://www.unicode.org/cldr/charts/32/summary/de.html#1881[m
[31m-[m
[31m-var dayPeriodValues = {[m
[31m-  narrow: {[m
[31m-    am: 'vm.',[m
[31m-    pm: 'nm.',[m
[31m-    midnight: 'Mitternacht',[m
[31m-    noon: 'Mittag',[m
[31m-    morning: 'Morgen',[m
[31m-    afternoon: 'Nachm.',[m
[31m-    evening: 'Abend',[m
[31m-    night: 'Nacht'[m
[31m-  },[m
[31m-  abbreviated: {[m
[31m-    am: 'vorm.',[m
[31m-    pm: 'nachm.',[m
[31m-    midnight: 'Mitternacht',[m
[31m-    noon: 'Mittag',[m
[31m-    morning: 'Morgen',[m
[31m-    afternoon: 'Nachmittag',[m
[31m-    evening: 'Abend',[m
[31m-    night: 'Nacht'[m
[31m-  },[m
[31m-  wide: {[m
[31m-    am: 'vormittags',[m
[31m-    pm: 'nachmittags',[m
[31m-    midnight: 'Mitternacht',[m
[31m-    noon: 'Mittag',[m
[31m-    morning: 'Morgen',[m
[31m-    afternoon: 'Nachmittag',[m
[31m-    evening: 'Abend',[m
[31m-    night: 'Nacht'[m
[31m-  }[m
[31m-};[m
[31m-var formattingDayPeriodValues = {[m
[31m-  narrow: {[m
[31m-    am: 'vm.',[m
[31m-    pm: 'nm.',[m
[31m-    midnight: 'Mitternacht',[m
[31m-    noon: 'Mittag',[m
[31m-    morning: 'morgens',[m
[31m-    afternoon: 'nachm.',[m
[31m-    evening: 'abends',[m
[31m-    night: 'nachts'[m
[31m-  },[m
[31m-  abbreviated: {[m
[31m-    am: 'vorm.',[m
[31m-    pm: 'nachm.',[m
[31m-    midnight: 'Mitternacht',[m
[31m-    noon: 'Mittag',[m
[31m-    morning: 'morgens',[m
[31m-    afternoon: 'nachmittags',[m
[31m-    evening: 'abends',[m
[31m-    night: 'nachts'[m
[31m-  },[m
[31m-  wide: {[m
[31m-    am: 'vormittags',[m
[31m-    pm: 'nachmittags',[m
[31m-    midnight: 'Mitternacht',[m
[31m-    noon: 'Mittag',[m
[31m-    morning: 'morgens',[m
[31m-    afternoon: 'nachmittags',[m
[31m-    evening: 'abends',[m
[31m-    night: 'nachts'[m
[31m-  }[m
[31m-};[m
[31m-[m
[31m-var ordinalNumber = function (dirtyNumber) {[m
[31m-  var number = Number(dirtyNumber);[m
[31m-  return number + '.';[m
[31m-};[m
[31m-[m
[31m-var localize = {[m
[31m-  ordinalNumber: ordinalNumber,[m
[31m-  era: (0, _index.default)({[m
[31m-    values: eraValues,[m
[31m-    defaultWidth: 'wide'[m
[31m-  }),[m
[31m-  quarter: (0, _index.default)({[m
[31m-    values: quarterValues,[m
[31m-    defaultWidth: 'wide',[m
[31m-    argumentCallback: function (quarter) {[m
[31m-      return quarter - 1;[m
[31m-    }[m
[31m-  }),[m
[31m-  month: (0, _index.default)({[m
[31m-    values: monthValues,[m
[31m-    formattingValues: formattingMonthValues,[m
[31m-    defaultWidth: 'wide'[m
[31m-  }),[m
[31m-  day: (0, _index.default)({[m
[31m-    values: dayValues,[m
[31m-    defaultWidth: 'wide'[m
[31m-  }),[m
[31m-  dayPeriod: (0, _index.default)({[m
[31m-    values: dayPeriodValues,[m
[31m-    defaultWidth: 'wide',[m
[31m-    formattingValues: formattingDayPeriodValues,[m
[31m-    defaultFormattingWidth: 'wide'[m
[31m-  })[m
[31m-};[m
[31m-var _default = localize;[m
[31m-exports.default = _default;[m
[31m-module.exports = exports.default;[m
\ No newline at end of file[m
[1mdiff --git a/.pnpm-store/v3/files/00/0af4fc03d2ecf7155b911e07941ea071519cc573fc911548cdad0701587a3617d6dc9954610260c3d1c421adc4799ccec5835ec14b994d5fc5baa8a6f83e0a b/.pnpm-store/v3/files/00/0af4fc03d2ecf7155b911e07941ea071519cc573fc911548cdad0701587a3617d6dc9954610260c3d1c421adc4799ccec5835ec14b994d5fc5baa8a6f83e0a[m
[1mdeleted file mode 100644[m
[1mindex 06a36865..00000000[m
[1m--- a/.pnpm-store/v3/files/00/0af4fc03d2ecf7155b911e07941ea071519cc573fc911548cdad0701587a3617d6dc9954610260c3d1c421adc4799ccec5835ec14b994d5fc5baa8a6f83e0a[m
[1m+++ /dev/null[m
[36m@@ -1,34 +0,0 @@[m
[31m-var baseHasIn = require('./_baseHasIn'),[m
[31m-    hasPath = require('./_hasPath');[m
[31m-[m
[31m-/**[m
[31m- * Checks if `path` is a direct or inherited property of `object`.[m
[31m- *[m
[31m- * @static[m
[31m- * @memberOf _[m
[31m- * @since 4.0.0[m
[31m- * @category Object[m
[31m- * @param {Object} object The object to query.[m
[31m- * @param {Array|string} path The path to check.[m
[31m- * @returns {boolean} Returns `true` if `path` exists, else `false`.[m
[31m- * @example[m
[31m- *[m
[31m- * var object = _.create({ 'a': _.create({ 'b': 2 }) });[m
[31m- *[m
[31m- * _.hasIn(object, 'a');[m
[31m- * // => true[m
[31m- *[m
[31m- * _.hasIn(object, 'a.b');[m
[31m- * // => true[m
[31m- *[m
[31m- * _.hasIn(object, ['a', 'b']);[m
[31m- * // => true[m
[31m- *[m
[31m- * _.hasIn(object, 'b');[m
[31m- * // => false[m
[31m- */[m
[31m-function hasIn(object, path) {[m
[31m-  return object != null && hasPath(object, path, baseHasIn);[m
[31m-}[m
[31m-[m
[31m-module.exports = hasIn;[m
[1mdiff --git a/.pnpm-store/v3/files/00/0e35ec49ead90c9de75c4d778e714b2f533ecc446959d61adc949094361bf53fb23f8314cf7d2cd8028168ae5a22cbd3df1f3468a42e8c87bbf2fea559f413 b/.pnpm-store/v3/files/00/0e35ec49ead90c9de75c4d778e714b2f533ecc446959d61adc949094361bf53fb23f8314cf7d2cd8028168ae5a22cbd3df1f3468a42e8c87bbf2fea559f413[m
[1mdeleted file mode 100644[m
[1mindex 733a96e3..00000000[m
[1m--- a/.pnpm-store/v3/files/00/0e35ec49ead90c9de75c4d778e714b2f533ecc446959d61adc949094361bf53fb23f8314cf7d2cd8028168ae5a22cbd3df1f3468a42e8c87bbf2fea559f413[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-// This file is generated automatically by `scripts/build/typings.js`. Please, don't change it.[m
[31m-[m
[31m-import { max } from 'date-fns'[m
[31m-export default max[m
[1mdiff --git a/.pnpm-store/v3/files/00/11c73e80655c72f00b59fcd77eecb6c6f87ad2118df18899e6f209c74091de761174b7d0bd73b6f570cb2ceef340ee9febf6b3dae35225dad0e5b5b4676d6b b/.pnpm-store/v3/files/00/11c73e80655c72f00b59fcd77eecb6c6f87ad2118df18899e6f209c74091de761174b7d0bd73b6f570cb2ceef340ee9febf6b3dae35225dad0e5b5b4676d6b[m
[1mdeleted file mode 100644[m
[1mindex e9bd5377..00000000[m
[1m--- a/.pnpm-store/v3/files/00/11c73e80655c72f00b59fcd77eecb6c6f87ad2118df18899e6f209c74091de761174b7d0bd73b6f570cb2ceef340ee9febf6b3dae35225dad0e5b5b4676d6b[m
[1m+++ /dev/null[m
[36m@@ -1,69 +0,0 @@[m
[31m-{[m
[31m-  "name": "react-transition-group",[m
[31m-  "version": "4.4.5",[m
[31m-  "description": "A react component toolset for managing animations",[m
[31m-  "main": "cjs/index.js",[m
[31m-  "module": "esm/index.js",[m
[31m-  "repository": {[m
[31m-    "type": "git",[m
[31m-    "url": "https://github.com/reactjs/react-transition-group.git"[m
[31m-  },[m
[31m-  "keywords": [[m
[31m-    "react",[m
[31m-    "transition",[m
[31m-    "addons",[m
[31m-    "transition-group",[m
[31m-    "animation",[m
[31m-    "css",[m
[31m-    "transitions"[m
[31m-  ],[m
[31m-  "author": "",[m
[31m-  "license": "BSD-3-Clause",[m
[31m-  "bugs": {[m
[31m-    "url": "https://github.com/reactjs/react-transition-group/issues"[m
[31m-  },[m
[31m-  "homepage": "https://github.com/reactjs/react-transition-group#readme",[m
[31m-  "jest": {[m
[31m-    "testRegex": "-test\\.js",[m
[31m-    "setupFiles": [[m
[31m-      "./test/setup.js"[m
[31m-    ],[m
[31m-    "setupFilesAfterEnv": [[m
[31m-      "./test/setupAfterEnv.js"[m
[31m-    ],[m
[31m-    "roots": [[m
[31m-      "<rootDir>/test"[m
[31m-    ][m
[31m-  },[m
[31m-  "peerDependencies": {[m
[31m-    "react": ">=16.6.0",[m
[31m-    "react-dom": ">=16.6.0"[m
[31m-  },[m
[31m-  "dependencies": {[m
[31m-    "@babel/runtime": "^7.5.5",[m
[31m-    "dom-helpers": "^5.0.1",[m
[31m-    "loose-envify": "^1.4.0",[m
[31m-    "prop-types": "^15.6.2"[m
[31m-  },[m
[31m-  "release": {[m
[31m-    "pkgRoot": "lib",[m
[31m-    "verifyConditions": [[m
[31m-      "@semantic-release/changelog",[m
[31m-      "semantic-release-alt-publish-dir",[m
[31m-      "@semantic-release/git",[m
[31m-      "@semantic-release/github"[m
[31m-    ],[m
[31m-    "prepare": [[m
[31m-      "@semantic-release/changelog",[m
[31m-      "semantic-release-alt-publish-dir",[m
[31m-      "@semantic-release/npm",[m
[31m-      "@semantic-release/git"[m
[31m-    ][m
[31m-  },[m
[31m-  "browserify": {[m
[31m-    "transform": [[m
[31m-      "loose-envify"[m
[31m-    ][m
[31m-  },[m
[31m-  "sideEffects": false[m
[31m-}[m
[1mdiff --git a/.pnpm-store/v3/files/00/14b52f6227c7a7ce952305578a13fa231aa4f01731a8a351135e93ec6f4c8c5f6a3817dba0213d3ea7f8e4dd9a83a73fb1f53db089ba16ac0b9f8c3b372eeb b/.pnpm-store/v3/files/00/14b52f6227c7a7ce952305578a13fa231aa4f01731a8a351135e93ec6f4c8c5f6a3817dba0213d3ea7f8e4dd9a83a73fb1f53db089ba16ac0b9f8c3b372eeb[m
[1mdeleted file mode 100644[m
[1mindex a1f51611..00000000[m
[1m--- a/.pnpm-store/v3/files/00/14b52f6227c7a7ce952305578a13fa231aa4f01731a8a351135e93ec6f4c8c5f6a3817dba0213d3ea7f8e4dd9a83a73fb1f53db089ba16ac0b9f8c3b372eeb[m
[1m+++ /dev/null[m
[36m@@ -1,42 +0,0 @@[m
[31m-"use strict";[m
[31m-[m
[31m-var _interopRequireDefault = require("@babel/runtime/helpers/interopRequireDefault");[m
[31m-[m
[31m-Object.defineProperty(exports, "__esModule", {[m
[31m-  value: true[m
[31m-});[m
[31m-var _exportNames = {[m
[31m-  dialogClasses: true[m
[31m-};[m
[31m-Object.defineProperty(exports, "default", {[m
[31m-  enumerable: true,[m
[31m-  get: function () {[m
[31m-    return _Dialog.default;[m
[31m-  }[m
[31m-});[m
[31m-Object.defineProperty(exports, "dialogClasses", {[m
[31m-  enumerable: true,[m
[31m-  get: function () {[m
[31m-    return _dialogClasses.default;[m
[31m-  }[m
[31m-});[m
[31m-[m
[31m-var _Dialog = _interopRequireDefault(require("./Dialog"));[m
[31m-[m
[31m-var _dialogClasses = _interopRequireWildcard(require("./dialogClasses"));[m
[31m-[m
[31m-Object.keys(_dialogClasses).forEach(function (key) {[m
[31m-  if (key === "default" || key === "__esModule") return;[m
[31m-  if (Object.prototype.hasOwnProperty.call(_exportNames, key)) return;[m
[31m-  if (key in exports && exports[key] === _dialogClasses[key]) return;[m
[31m-  Object.defineProperty(exports, key, {[m
[31m-    enumerable: true,[m
[31m-    get: function () {[m
[31m-      return _dialogClasses[key];[m
[31m-    }[m
[31m-  });[m
[31m-});[m
[31m-[m
[31m-function _getRequireWildcardCache(nodeInterop) { if (typeof WeakMap !== "function") return null; var cacheBabelInterop = new WeakMap(); var cacheNodeInterop = new WeakMap(); return (_getRequireWildcardCache = function (nodeInterop) { return nodeInterop ? cacheNodeInterop : cacheBabelInterop; })(nodeInterop); }[m
[31m-[m
[31m-function _interopRequireWildcard(obj, nodeInterop) { if (!nodeInterop && obj && obj.__esModule) { return obj; } if (obj === null || typeof obj !== "object" && typeof obj !== "function") { return { default: obj }; } var cache = _getRequireWildcardCache(nodeInterop); if (cache && cache.has(obj)) { return cache.get(obj); } var newObj = {}; var hasPropertyDescriptor = Object.defineProperty && Object.getOwnPropertyDescriptor; for (var key in obj) { if (key !== "default" && Object.prototype.hasOwnProperty.call(obj, key)) { var desc = hasPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : null; if (desc && (desc.get || desc.set)) { Object.defineProperty(newObj, key, desc); } else { newObj[key] = obj[key]; } } } newObj.default = obj; if (cache) { cache.set(obj, newObj); } return newObj; }[m
\ No newline at end of file[m
[1mdiff --git a/.pnpm-store/v3/files/00/1964986d531b57f13008a726001a1e7999d284cf8d03725c57160bc19406a20f8c508b10f838f325f2584daafdbc996c2dc6b0a82a0a8d67ec53898625d83c b/.pnpm-store/v3/files/00/1964986d531b57f13008a726001a1e7999d284cf8d03725c57160bc19406a20f8c508b10f838f325f2584daafdbc996c2dc6b0a82a0a8d67ec53898625d83c[m
[1mdeleted file mode 100644[m
[1mindex dfe69b1f..00000000[m
[1m--- a/.pnpm-store/v3/files/00/1964986d531b57f13008a726001a1e7999d284cf8d03725c57160bc19406a20f8c508b10f838f325f2584daafdbc996c2dc6b0a82a0a8d67ec53898625d83c[m
[1m+++ /dev/null[m
[36m@@ -1,2 +0,0 @@[m
[31m-var convert = require('./convert');[m
[31m-module.exports = convert(require('../function'));[m
[1mdiff --git a/.pnpm-store/v3/files/00/1bd318b4f0e816c9ded28091d256ae7ff7d3b0e9ff3b262376377857e0801e53b59d3ea434c2e032cd746ed135c655b1479cafe5e4473c7fbb224ae36f4ae8 b/.pnpm-store/v3/files/00/1bd318b4f0e816c9ded28091d256ae7ff7d3b0e9ff3b262376377857e0801e53b59d3ea434c2e032cd746ed135c655b1479cafe5e4473c7fbb224ae36f4ae8[m
[1mdeleted file mode 100644[m
[1mindex a0a48c89..00000000[m
[1m--- a/.pnpm-store/v3/files/00/1bd318b4f0e816c9ded28091d256ae7ff7d3b0e9ff3b262376377857e0801e53b59d3ea434c2e032cd746ed135c655b1479cafe5e4473c7fbb224ae36f4ae8[m
[1m+++ /dev/null[m
[36m@@ -1,39 +0,0 @@[m
[31m-/**[m
[31m-Check if [`argv`](https://nodejs.org/docs/latest/api/process.html#process_process_argv) has a specific flag.[m
[31m-[m
[31m-@param flag - CLI flag to look for. The `--` prefix is optional.[m
[31m-@param argv - CLI arguments. Default: `process.argv`.[m
[31m-@returns Whether the flag exists.[m
[31m-[m
[31m-@example[m
[31m-```[m
[31m-// $ ts-node foo.ts -f --unicorn --foo=bar -- --rainbow[m
[31m-[m
[31m-// foo.ts[m
[31m-import hasFlag = require('has-flag');[m
[31m-[m
[31m-hasFlag('unicorn');[m
[31m-//=> true[m
[31m-[m
[31m-hasFlag('--unicorn');[m
[31m-//=> true[m
[31m-[m
[31m-hasFlag('f');[m
[31m-//=> true[m
[31m-[m
[31m-hasFlag('-f');[m
[31m-//=> true[m
[31m-[m
[31m-hasFlag('foo=bar');[m
[31m-//=> true[m
[31m-[m
[31m-hasFlag('foo');[m
[31m-//=> false[m
[31m-[m
[31m-hasFlag('rainbow');[m
[31m-//=> false[m
[31m-```[m
[31m-*/[m
[31m-declare function hasFlag(flag: string, argv?: string[]): boolean;[m
[31m-[m
[31m-export = hasFlag;[m
[1mdiff --git a/.pnpm-store/v3/files/00/1df00cff60f228c4c9ea47445ac6c280180dc586ca667e45ec628199edb976f604c6fa37254df7fde9665896c2e43eff988c818f0c72705ab2bd1830e56ca1 b/.pnpm-store/v3/files/00/1df00cff60f228c4c9ea47445ac6c280180dc586ca667e45ec628199edb976f604c6fa37254df7fde9665896c2e43eff988c818f0c72705ab2bd1830e56ca1[m
[1mdeleted file mode 100644[m
[1mindex 4a93a0b2..00000000[m
[1m--- a/.pnpm-store/v3/files/00/1df00cff60f228c4c9ea47445ac6c280180dc586ca667e45ec628199edb976f604c6fa37254df7fde9665896c2e43eff988c818f0c72705ab2bd1830e56ca1[m
[1m+++ /dev/null[m
[36m@@ -1,46 +0,0 @@[m
[31m-"use strict";[m
[31m-[m
[31m-Object.defineProperty(exports, "__esModule", {[m
[31m-  value: true[m
[31m-});[m
[31m-exports.default = void 0;[m
[31m-[m
[31m-var _index = _interopRequireDefault(require("../../../_lib/buildFormatLongFn/index.js"));[m
[31m-[m
[31m-function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }[m
[31m-[m
[31m-var dateFormats = {[m
[31m-  full: 'EEEE, MMMM do, y',[m
[31m-  long: 'MMMM do, y',[m
[31m-  medium: 'MMM d, y',[m
[31m-  short: 'MM/dd/yyyy'[m
[31m-};[m
[31m-var timeFormats = {[m
[31m-  full: 'h:mm:ss a zzzz',[m
[31m-  long: 'h:mm:ss a z',[m
[31m-  medium: 'h:mm:ss a',[m
[31m-  short: 'h:mm a'[m
[31m-};[m
[31m-var dateTimeFormats = {[m
[31m-  full: "{{date}} 'aig' {{time}}",[m
[31m-  long: "{{date}} 'aig' {{time}}",[m
[31m-  medium: '{{date}}, {{time}}',[m
[31m-  short: '{{date}}, {{time}}'[m
[31m-};[m
[31m-var formatLong = {[m
[31m-  date: (0, _index.default)({[m
[31m-    formats: dateFormats,[m
[31m-    defaultWidth: 'full'[m
[31m-  }),[m
[31m-  time: (0, _index.default)({[m
[31m-    formats: timeFormats,[m
[31m-    defaultWidth: 'full'[m
[31m-  }),[m
[31m-  dateTime: (0, _index.default)({[m
[31m-    formats: dateTimeFormats,[m
[31m-    defaultWidth: 'full'[m
[31m-  })[m
[31m-};[m
[31m-var _default = formatLong;[m
[31m-exports.default = _default;[m
[31m-module.exports = exports.default;[m
\ No newline at end of file[m
[1mdiff --git a/.pnpm-store/v3/files/00/253ad53fb18da796074c5e81149a5ed7984fce61f04d3badf3da0542e507fd856dacba0dfab2e687e96423ba0436888a727736ae3a318c9374abf558820246 b/.pnpm-store/v3/files/00/253ad53fb18da796074c5e81149a5ed7984fce61f04d3badf3da0542e507fd856dacba0dfab2e687e96423ba0436888a727736ae3a318c9374abf558820246[m
[1mdeleted file mode 100644[m
[1mindex 77fba595..00000000[m
[1m--- a/.pnpm-store/v3/files/00/253ad53fb18da796074c5e81149a5ed7984fce61f04d3badf3da0542e507fd856dacba0dfab2e687e96423ba0436888a727736ae3a318c9374abf558820246[m
[1m+++ /dev/null[m
[36m@@ -1,64 +0,0 @@[m
[31m-// @flow[m
[31m-// This file is generated automatically by `scripts/build/typings.js`. Please, don't change it.[m
[31m-[m
[31m-export type Interval = {[m
[31m-  start: Date | number,[m
[31m-  end: Date | number,[m
[31m-}[m
[31m-[m
[31m-export type Locale = {[m
[31m-  code?: string,[m
[31m-  formatDistance?: (...args: Array<any>) => any,[m
[31m-  formatRelative?: (...args: Array<any>) => any,[m
[31m-  localize?: {[m
[31m-    ordinalNumber: (...args: Array<any>) => any,[m
[31m-    era: (...args: Array<any>) => any,[m
[31m-    quarter: (...args: Array<any>) => any,[m
[31m-    month: (...args: Array<any>) => any,[m
[31m-    day: (...args: Array<any>) => any,[m
[31m-    dayPeriod: (...args: Array<any>) => any,[m
[31m-  },[m
[31m-  formatLong?: {[m
[31m-    date: (...args: Array<any>) => any,[m
[31m-    time: (...args: Array<any>) => any,[m
[31m-    dateTime: (...args: Array<any>) => any,[m
[31m-  },[m
[31m-  match?: {[m
[31m-    ordinalNumber: (...args: Array<any>) => any,[m
[31m-    era: (...args: Array<any>) => any,[m
[31m-    quarter: (...args: Array<any>) => any,[m
[31m-    month: (...args: Array<any>) => any,[m
[31m-    day: (...args: Array<any>) => any,[m
[31m-    dayPeriod: (...args: Array<any>) => any,[m
[31m-  },[m
[31m-  options?: {[m
[31m-    weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6,[m
[31m-    firstWeekContainsDate?: 1 | 2 | 3 | 4 | 5 | 6 | 7,[m
[31m-  },[m
[31m-}[m
[31m-[m
[31m-export type Duration = {[m
[31m-  years?: number,[m
[31m-  months?: number,[m
[31m-  weeks?: number,[m
[31m-  days?: number,[m
[31m-  hours?: number,[m
[31m-  minutes?: number,[m
[31m-  seconds?: number,[m
[31m-}[m
[31m-[m
[31m-export type Day = 0 | 1 | 2 | 3 | 4 | 5 | 6[m
[31m-[m
[31m-type CurriedFn1<A, R> = <A>(a: A) => R[m
[31m-[m
[31m-type CurriedFn2<A, B, R> = <A>([m
[31m-  a: A[m
[31m-) => CurriedFn1<B, R> | (<A, B>(a: A, b: B) => R)[m
[31m-[m
[31m-declare module.exports: CurriedFn2<[m
[31m-  {[m
[31m-    fractionDigits?: 0 | 1 | 2 | 3,[m
[31m-  },[m
[31m-  Date | number,[m
[31m-  string[m
[31m->[m
[1mdiff --git a/.pnpm-store/v3/files/00/3262b5b37f5343f8f488b244bfdc157b3518adb15bdb60eb1e9a9843035ae41a22ac0c37436063c75c8a5ff17da9223aaf948d5854bf4456316c41597bfd59 b/.pnpm-store/v3/files/00/3262b5b37f5343f8f488b244bfdc157b3518adb15bdb60eb1e9a9843035ae41a22ac0c37436063c75c8a5ff17da9223aaf948d5854bf4456316c41597bfd59[m
[1mdeleted file mode 100644[m
[1mindex 82d1b5d5..00000000[m
[1m--- a/.pnpm-store/v3/files/00/3262b5b37f5343f8f488b244bfdc157b3518adb15bdb60eb1e9a9843035ae41a22ac0c37436063c75c8a5ff17da9223aaf948d5854bf4456316c41597bfd59[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-// This file is generated automatically by `scripts/build/typings.js`. Please, don't change it.[m
[31m-[m
[31m-import { endOfMinute } from 'date-fns'[m
[31m-export default endOfMinute[m
[1mdiff --git a/.pnpm-store/v3/files/00/32a3a59ebd822e48248590cae3c2dd1baffd3e34f5c58c0788ed4789e0318153e14bd4248f15f1e0e4731b8d068b9b7c9c2dcef80d4955df872f6c089415fd b/.pnpm-store/v3/files/00/32a3a59ebd822e48248590cae3c2dd1baffd3e34f5c58c0788ed4789e0318153e14bd4248f15f1e0e4731b8d068b9b7c9c2dcef80d4955df872f6c089415fd[m
[1mdeleted file mode 100644[m
[1mindex f5202313..00000000[m
[1m--- a/.pnpm-store/v3/files/00/32a3a59ebd822e48248590cae3c2dd1