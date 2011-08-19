.class final Lcom/flurry/android/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/flurry/android/ab;


# direct methods
.method constructor <init>(Lcom/flurry/android/ab;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/ab;

    iput-object p2, p0, Lcom/flurry/android/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/flurry/android/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/ab;

    iget-object v0, v0, Lcom/flurry/android/ab;->d:Lcom/flurry/android/n;

    iget-object v1, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/ab;

    iget-object v1, v1, Lcom/flurry/android/ab;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/t;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/n;->a(Lcom/flurry/android/n;Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/ab;

    iget-object v0, v0, Lcom/flurry/android/ab;->c:Lcom/flurry/android/y;

    new-instance v1, Lcom/flurry/android/i;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/ab;

    iget-object v3, v3, Lcom/flurry/android/ab;->d:Lcom/flurry/android/n;

    invoke-virtual {v3}, Lcom/flurry/android/n;->i()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/i;-><init>(BJ)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    sget-object v0, Lcom/flurry/android/n;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch in app market: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/t;->b:Lcom/flurry/android/ab;

    iget-object v2, v2, Lcom/flurry/android/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
