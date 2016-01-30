/* gstreamer-controller-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstController", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace Controller {
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstARGBControlBinding", lower_case_cprefix = "gst_argb_control_binding_", type_id = "gst_argb_control_binding_get_type ()")]
		[GIR (name = "ARGBControlBinding")]
		public class ARGBControlBinding : Gst.ControlBinding {
			[CCode (has_construct_function = false, type = "GstControlBinding*")]
			public ARGBControlBinding (Gst.Object object, string property_name, Gst.ControlSource cs_a, Gst.ControlSource cs_r, Gst.ControlSource cs_g, Gst.ControlSource cs_b);
			[NoAccessorMethod]
			public Gst.ControlSource control_source_a { owned get; set construct; }
			[NoAccessorMethod]
			public Gst.ControlSource control_source_b { owned get; set construct; }
			[NoAccessorMethod]
			public Gst.ControlSource control_source_g { owned get; set construct; }
			[NoAccessorMethod]
			public Gst.ControlSource control_source_r { owned get; set construct; }
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstControlPoint", copy_function = "g_boxed_copy", free_function = "g_boxed_free", lower_case_cprefix = "gst_control_point_", type_id = "gst_control_point_get_type ()")]
		[Compact]
		[GIR (name = "ControlPoint")]
		public class ControlPoint {
			[CCode (cname = "cache.cubic.h")]
			public double cache_cubic_h;
			[CCode (cname = "cache.cubic.z")]
			public double cache_cubic_z;
			public Gst.ClockTime timestamp;
			public double value;
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstDirectControlBinding", lower_case_cprefix = "gst_direct_control_binding_", type_id = "gst_direct_control_binding_get_type ()")]
		[GIR (name = "DirectControlBinding")]
		public class DirectControlBinding : Gst.ControlBinding {
			[CCode (array_length = false, array_null_terminated = true, cname = "ABI._gst_reserved")]
			public weak void*[] ABI__gst_reserved;
			[CCode (cname = "ABI.abi.want_absolute")]
			public bool ABI_abi_want_absolute;
			[CCode (has_construct_function = false, type = "GstControlBinding*")]
			public DirectControlBinding (Gst.Object object, string property_name, Gst.ControlSource cs);
			[CCode (cname = "gst_direct_control_binding_new_absolute", has_construct_function = false, type = "GstControlBinding*")]
			[Version (since = "1.6")]
			public DirectControlBinding..new_with_absolute (Gst.Object object, string property_name, Gst.ControlSource cs);
			[NoAccessorMethod]
			public bool absolute { get; construct; }
			[NoAccessorMethod]
			public Gst.ControlSource control_source { owned get; set construct; }
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstInterpolationControlSource", lower_case_cprefix = "gst_interpolation_control_source_", type_id = "gst_interpolation_control_source_get_type ()")]
		[GIR (name = "InterpolationControlSource")]
		public class InterpolationControlSource : Gst.Controller.TimedValueControlSource {
			[CCode (has_construct_function = false, type = "GstControlSource*")]
			public InterpolationControlSource ();
			[NoAccessorMethod]
			public Gst.Controller.InterpolationMode mode { get; set; }
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstLFOControlSource", lower_case_cprefix = "gst_lfo_control_source_", type_id = "gst_lfo_control_source_get_type ()")]
		[GIR (name = "LFOControlSource")]
		public class LFOControlSource : Gst.ControlSource {
			[CCode (has_construct_function = false, type = "GstControlSource*")]
			public LFOControlSource ();
			[NoAccessorMethod]
			public double amplitude { get; set; }
			[NoAccessorMethod]
			public double frequency { get; set; }
			[NoAccessorMethod]
			public double offset { get; set; }
			[NoAccessorMethod]
			public uint64 timeshift { get; set; }
			[NoAccessorMethod]
			public Gst.Controller.LFOWaveform waveform { get; set; }
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstTimedValueControlSource", lower_case_cprefix = "gst_timed_value_control_source_", type_id = "gst_timed_value_control_source_get_type ()")]
		[GIR (name = "TimedValueControlSource")]
		public abstract class TimedValueControlSource : Gst.ControlSource {
			public weak GLib.Mutex @lock;
			public int nvalues;
			public bool valid_cache;
			public GLib.Sequence<Gst.Controller.ControlPoint?> values;
			[CCode (has_construct_function = false)]
			protected TimedValueControlSource ();
			public unowned GLib.SequenceIter find_control_point_iter (Gst.ClockTime timestamp);
			public GLib.List<weak Gst.TimedValue?> get_all ();
			public int get_count ();
			public bool @set (Gst.ClockTime timestamp, double value);
			public bool set_from_list (GLib.SList<Gst.TimedValue?> timedvalues);
			public bool unset (Gst.ClockTime timestamp);
			public void unset_all ();
			[Version (since = "1.6")]
			public signal void value_added (Gst.Controller.ControlPoint timed_value);
			[Version (since = "1.6")]
			public signal void value_changed (Gst.Controller.ControlPoint timed_value);
			[Version (since = "1.6")]
			public signal void value_removed (Gst.Controller.ControlPoint timed_value);
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstTriggerControlSource", lower_case_cprefix = "gst_trigger_control_source_", type_id = "gst_trigger_control_source_get_type ()")]
		[GIR (name = "TriggerControlSource")]
		public class TriggerControlSource : Gst.Controller.TimedValueControlSource {
			[CCode (has_construct_function = false, type = "GstControlSource*")]
			public TriggerControlSource ();
			[NoAccessorMethod]
			public int64 tolerance { get; set; }
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstInterpolationMode", cprefix = "GST_INTERPOLATION_MODE_", type_id = "gst_interpolation_mode_get_type ()")]
		[GIR (name = "InterpolationMode")]
		public enum InterpolationMode {
			NONE,
			LINEAR,
			CUBIC
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstLFOWaveform", cprefix = "GST_LFO_WAVEFORM_", type_id = "gst_lfo_waveform_get_type ()")]
		[GIR (name = "LFOWaveform")]
		public enum LFOWaveform {
			SINE,
			SQUARE,
			SAW,
			REVERSE_SAW,
			TRIANGLE
		}
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstDirectControlBindingConvertGValue", has_target = false)]
		public delegate void DirectControlBindingConvertGValue (Gst.Controller.DirectControlBinding self, double src_value, GLib.Value dest_value);
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "GstDirectControlBindingConvertValue", has_target = false)]
		public delegate void DirectControlBindingConvertValue (Gst.Controller.DirectControlBinding self, double src_value, void* dest_value);
		[CCode (cheader_filename = "gst/controller/controller.h", cname = "gst_timed_value_control_invalidate_cache")]
		public static void timed_value_control_invalidate_cache (Gst.Controller.TimedValueControlSource self);
	}
}
