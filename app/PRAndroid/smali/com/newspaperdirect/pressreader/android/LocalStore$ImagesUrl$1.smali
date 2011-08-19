.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$1;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->load()Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$1;->val$result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$1;->val$result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://cache-styles.pressdisplay.com"

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;Ljava/lang/String;)V

    .line 2108
    return-void

    .line 2107
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
