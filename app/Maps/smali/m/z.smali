.class Lm/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field final synthetic a:Lm/l;


# direct methods
.method private constructor <init>(Lm/l;)V
    .locals 0

    iput-object p1, p0, Lm/z;->a:Lm/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm/l;Lm/L;)V
    .locals 0

    invoke-direct {p0, p1}, Lm/z;-><init>(Lm/l;)V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lm/z;->a:Lm/l;

    invoke-static {v0, p1}, Lm/l;->a(Lm/l;Ljava/lang/String;)V

    return-void
.end method
