.class Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;
.super Ljava/lang/Object;
.source "VoiceIMEConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceIMEConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceResults"
.end annotation


# instance fields
.field alternatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;->this$0:Lcom/android/inputmethod/voice/VoiceIMEConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;Lcom/android/inputmethod/voice/VoiceIMEConnector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceIMEConnector$VoiceResults;-><init>(Lcom/android/inputmethod/voice/VoiceIMEConnector;)V

    return-void
.end method
