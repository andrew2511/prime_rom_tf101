.class public Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;
.super Landroid/os/AsyncTask;
.source "MasfSenderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/voicesearch/masf/LiteRequest;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/google/android/voicesearch/masf/LiteRequest;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasfSenderAsyncTask"


# instance fields
.field private final mClientString:Ljava/lang/String;

.field private final mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

.field private final mMasfSender:Lcom/google/android/voicesearch/masf/MasfSender;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/voicesearch/util/CookieStore;Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mClientString:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/google/android/voicesearch/masf/MasfSender;

    invoke-direct {v0, p2}, Lcom/google/android/voicesearch/masf/MasfSender;-><init>(Lcom/google/android/voicesearch/util/CookieStore;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mMasfSender:Lcom/google/android/voicesearch/masf/MasfSender;

    .line 41
    iput-object p3, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 30
    check-cast p1, [Lcom/google/android/voicesearch/masf/LiteRequest;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->doInBackground([Lcom/google/android/voicesearch/masf/LiteRequest;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/voicesearch/masf/LiteRequest;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 48
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mMasfSender:Lcom/google/android/voicesearch/masf/MasfSender;

    iget-object v2, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mClientString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/voicesearch/masf/MasfSender;->send(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_1
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    const-string v2, "MasfSenderAsyncTask"

    const-string v3, "Could not send the requests"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;->mCompletionListener:Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;->onSendCompleted(Ljava/util/ArrayList;)V

    .line 65
    :cond_0
    return-void
.end method
