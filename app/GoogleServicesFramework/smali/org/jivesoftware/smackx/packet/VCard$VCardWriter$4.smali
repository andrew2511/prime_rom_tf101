.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendAddress(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

.field final synthetic val$addr:Ljava/util/Map;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->val$addr:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 5

    .prologue
    .line 855
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->val$code:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$900(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V

    .line 857
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->val$addr:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 858
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 860
    .local v0, entry:Ljava/util/Map$Entry;
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$4;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$1000(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    .end local v0           #entry:Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method
