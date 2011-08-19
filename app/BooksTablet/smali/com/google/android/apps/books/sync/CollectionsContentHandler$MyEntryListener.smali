.class Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;
.super Ljava/lang/Object;
.source "CollectionsContentHandler.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/sync/CollectionsContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEntryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Lcom/google/android/apps/books/sync/CollectionsContentHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;-><init>(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v2}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$400(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v0}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$000(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v1}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$202(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 133
    return-void
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "attributes"

    .prologue
    .line 119
    const-string v0, "mValues should be null.  Missing </entry>, failed to consume the mValues, or forgot to set it to null upon consumption?"

    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    invoke-static {v1}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$200(Lcom/google/android/apps/books/sync/CollectionsContentHandler;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsContentHandler$MyEntryListener;->this$0:Lcom/google/android/apps/books/sync/CollectionsContentHandler;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/apps/books/sync/CollectionsContentHandler;->access$202(Lcom/google/android/apps/books/sync/CollectionsContentHandler;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 122
    return-void
.end method
