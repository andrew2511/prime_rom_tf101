.class Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;
.super Ljava/lang/Object;
.source "CollectionsContentHandler.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/sync/CollectionsContentHandler;->createRoot()Landroid/sax/RootElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "attributes"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$000(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method
