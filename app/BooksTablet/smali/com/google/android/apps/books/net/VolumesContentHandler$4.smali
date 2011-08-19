.class Lcom/google/android/apps/books/net/VolumesContentHandler$4;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;->mapString(Landroid/sax/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

.field final synthetic val$columnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$4;,"Lcom/google/android/apps/books/net/VolumesContentHandler.4;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->val$columnName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 6
    .parameter "body"

    .prologue
    .line 221
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$4;,"Lcom/google/android/apps/books/net/VolumesContentHandler.4;"
    move-object v2, p1

    .line 222
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->val$columnName:Ljava/lang/String;

    const-string v4, "volume_id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v0, v3

    .line 234
    .local v0, id:J
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v3

    const-string v4, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    .end local v0           #id:J
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->val$columnName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
