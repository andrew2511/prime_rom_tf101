.class Lcom/newspaperdirect/pressreader/android/core/Subscription$1;
.super Ljava/lang/Object;
.source "Subscription.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/Subscription;->loadSubscriptionsFromServer()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$1;->val$result:Ljava/util/List;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 130
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Subscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;-><init>(Lcom/newspaperdirect/pressreader/android/core/Subscription;)V

    .line 132
    .local v0, subscription:Lcom/newspaperdirect/pressreader/android/core/Subscription;
    const-string v1, "item-id"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$1(Lcom/newspaperdirect/pressreader/android/core/Subscription;J)V

    .line 133
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$2(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V

    .line 135
    const-string v1, "cid"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$3(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V

    .line 136
    const-string v1, "title"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$4(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V

    .line 137
    const-string v1, "country"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$5(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V

    .line 139
    const-string v1, "language"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->access$6(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription$1;->val$result:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method
