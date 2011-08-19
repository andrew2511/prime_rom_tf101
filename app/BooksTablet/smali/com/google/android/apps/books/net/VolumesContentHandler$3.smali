.class Lcom/google/android/apps/books/net/VolumesContentHandler$3;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;->extra(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$3;,"Lcom/google/android/apps/books/net/VolumesContentHandler.3;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$3;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 200
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$3;,"Lcom/google/android/apps/books/net/VolumesContentHandler.3;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$3;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$3;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
