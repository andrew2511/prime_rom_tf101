.class public Lcom/google/android/music/utils/PostFroyoUtils$AudioEffectComp;
.super Ljava/lang/Object;
.source "PostFroyoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/PostFroyoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioEffectComp"
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"


# instance fields
.field final synthetic this$0:Lcom/google/android/music/utils/PostFroyoUtils;


# direct methods
.method public constructor <init>(Lcom/google/android/music/utils/PostFroyoUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/music/utils/PostFroyoUtils$AudioEffectComp;->this$0:Lcom/google/android/music/utils/PostFroyoUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
