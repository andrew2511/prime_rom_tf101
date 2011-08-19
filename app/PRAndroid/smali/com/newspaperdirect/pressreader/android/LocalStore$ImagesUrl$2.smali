.class Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$2;
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
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$2;->val$result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    .line 2110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl$2;->val$result:Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;

    invoke-static {v0, p1}, Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;->access$1(Lcom/newspaperdirect/pressreader/android/LocalStore$ImagesUrl;Ljava/lang/String;)V

    .line 2113
    return-void
.end method
