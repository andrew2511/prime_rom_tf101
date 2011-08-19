.class Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->syncItemsList(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$licenseUrls:Ljava/util/List;

.field private final synthetic val$mids:Ljava/util/List;

.field private final synthetic val$newItems:Ljava/util/List;

.field private final synthetic val$updatedItems:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$licenseUrls:Ljava/util/List;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$newItems:Ljava/util/List;

    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$mids:Ljava/util/List;

    iput-object p5, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$updatedItems:Ljava/util/List;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "attributes"

    .prologue
    const/4 v3, 0x0

    .line 955
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$licenseUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 956
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, type:Ljava/lang/String;
    const-string v1, "newspaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$newItems:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 989
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-direct {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 961
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$24(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 962
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$newItems:Ljava/util/List;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$mids:Ljava/util/List;

    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 966
    :cond_1
    const-string v1, "newspaper-update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 967
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$updatedItems:Ljava/util/List;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    goto :goto_0

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-direct {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 970
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$24(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 971
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$updatedItems:Ljava/util/List;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$mids:Ljava/util/List;

    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    :cond_3
    const-string v1, "newspaper-purchase-advise"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 976
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$newItems:Ljava/util/List;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    goto/16 :goto_0

    .line 978
    :cond_4
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-direct {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    iput-object v2, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 979
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$24(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 980
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->access$25(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V

    .line 981
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$newItems:Ljava/util/List;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$mids:Ljava/util/List;

    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 986
    :cond_5
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 987
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;->val$mids:Ljava/util/List;

    const-string v2, "id"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
