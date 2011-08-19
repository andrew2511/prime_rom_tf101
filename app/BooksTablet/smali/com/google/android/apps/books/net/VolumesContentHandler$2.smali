.class Lcom/google/android/apps/books/net/VolumesContentHandler$2;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;-><init>(ZLcom/google/android/apps/books/net/KeyValueHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

.field final synthetic val$isFeed:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$2;,"Lcom/google/android/apps/books/net/VolumesContentHandler.2;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    iput-boolean p2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->val$isFeed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$2;,"Lcom/google/android/apps/books/net/VolumesContentHandler.2;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->endRow()V

    .line 166
    return-void
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 157
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$2;,"Lcom/google/android/apps/books/net/VolumesContentHandler.2;"
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->val$isFeed:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->init()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->startRow()V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$100(Lcom/google/android/apps/books/net/VolumesContentHandler;Lorg/xml/sax/Attributes;)V

    .line 162
    return-void
.end method
