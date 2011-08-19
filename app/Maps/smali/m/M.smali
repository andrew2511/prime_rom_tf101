.class Lm/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field final synthetic a:Lm/U;

.field final synthetic b:Lm/l;


# direct methods
.method constructor <init>(Lm/l;Lm/U;)V
    .locals 0

    iput-object p1, p0, Lm/M;->b:Lm/l;

    iput-object p2, p0, Lm/M;->a:Lm/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    iget-object v0, p0, Lm/M;->b:Lm/l;

    iget-object v1, p0, Lm/M;->a:Lm/U;

    invoke-static {v0, p1, v1}, Lm/l;->a(Lm/l;ILm/U;)V

    return-void
.end method
