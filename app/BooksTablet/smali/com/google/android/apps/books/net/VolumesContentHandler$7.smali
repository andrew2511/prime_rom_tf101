.class Lcom/google/android/apps/books/net/VolumesContentHandler$7;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;->mapBoolean(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$defaultValue:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$7;,"Lcom/google/android/apps/books/net/VolumesContentHandler.7;"
    iput-object p1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    iput-object p2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->val$defaultValue:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->val$columnName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 4
    .parameter "body"

    .prologue
    .line 279
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$7;,"Lcom/google/android/apps/books/net/VolumesContentHandler.7;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, lower:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 288
    .local v1, value:Ljava/lang/Boolean;
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->val$columnName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 289
    return-void

    .line 283
    .end local v1           #value:Ljava/lang/Boolean;
    :cond_0
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/Boolean;
    goto :goto_0

    .line 286
    .end local v1           #value:Ljava/lang/Boolean;
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->val$defaultValue:Ljava/lang/Boolean;

    .restart local v1       #value:Ljava/lang/Boolean;
    goto :goto_0
.end method
