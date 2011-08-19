.class public interface abstract Lcom/google/android/voicesearch/speechservice/RecognitionController;
.super Ljava/lang/Object;
.source "RecognitionController.java"


# static fields
.field public static final ACTION_ANALYZE_SPEECH:Ljava/lang/String; = "android.speech.action.ANALYZE_SPEECH"

.field public static final ACTION_TEST_RESULTS:Ljava/lang/String; = "com.google.android.voicesearch.TEST_RESULTS"

.field public static final DEBUG_ENABLE_TEST_AUTOMATION:Z = false

.field public static final EVENT_RETRY:I = 0x0

.field public static final EXTRA_ACTION_CONTEXT_ACTION_TYPE:Ljava/lang/String; = "android.speech.extras.ACTION_CONTEXT_ACTION_TYPE"

.field public static final EXTRA_ACTION_CONTEXT_SELECTED_SLOT:Ljava/lang/String; = "android.speech.extras.ACTION_CONTEXT_SELECTED_SLOT"

.field public static final EXTRA_CONTACT_AUTH:Ljava/lang/String; = "contact_auth"

.field public static final EXTRA_PLAYBACK_FILENAME:Ljava/lang/String; = "android.speech.extras.PLAYBACK_FILENAME"

.field public static final EXTRA_RAW_AUDIO:Ljava/lang/String; = "android.speech.extras.RAW_AUDIO"

.field public static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"

.field public static final EXTRA_RECORD_FILENAME:Ljava/lang/String; = "android.speech.extras.RECORD_FILENAME"

.field public static final EXTRA_SPEECH_TIMEOUT_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_TIMEOUT_MILLIS"

.field public static final EXTRA_WEB_SEARCH_ONLY:Ljava/lang/String; = "android.speech.extra.WEB_SEARCH_ONLY"

.field public static final FULL_RECOGNITION_RESULTS:Ljava/lang/String; = "fullRecognitionResults"

.field public static final FULL_RECOGNITION_RESULTS_REQUEST:Ljava/lang/String; = "fullRecognitionResultsRequest"

.field public static final NOISE_LEVEL:Ljava/lang/String; = "NoiseLevel"

.field public static final SIGNAL_NOISE_RATIO:Ljava/lang/String; = "SignalNoiseRatio"

.field public static final USE_LOCATION:Ljava/lang/String; = "useLocation"


# virtual methods
.method public abstract enterIntoPauseMode()V
.end method

.method public abstract onCancel(Landroid/speech/RecognitionListener;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionListener;)V
.end method

.method public abstract onStop()V
.end method

.method public abstract onStopListening(Landroid/speech/RecognitionListener;)V
.end method
