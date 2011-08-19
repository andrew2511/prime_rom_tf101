.class Lcom/asus/dictionary/Dictionary$4;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dictionary/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dictionary/Dictionary;


# direct methods
.method constructor <init>(Lcom/asus/dictionary/Dictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/asus/dictionary/Dictionary$4;->this$0:Lcom/asus/dictionary/Dictionary;

    invoke-direct {p0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 18
    .parameter "tag"

    .prologue
    .line 1207
    invoke-interface/range {p1 .. p1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v13

    .line 1208
    .local v13, tagName:Ljava/lang/String;
    const-string v15, "style"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1209
    .local v12, styleValue:Ljava/lang/String;
    const-string v15, "class"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1212
    .local v8, classValue:Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v15, "display:none"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1216
    const-string v15, "style"

    const-string v16, ""

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/htmlparser/Tag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    if-eqz v8, :cond_2

    const-string v15, "dct-er"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1223
    invoke-interface/range {p1 .. p1}, Lorg/htmlparser/Tag;->getParent()Lorg/htmlparser/Node;

    move-result-object v11

    .line 1224
    .local v11, parent:Lorg/htmlparser/Node;
    invoke-interface {v11}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v15

    invoke-virtual {v15, v11}, Lorg/htmlparser/util/NodeList;->remove(Lorg/htmlparser/Node;)Z

    goto :goto_0

    .line 1229
    .end local v11           #parent:Lorg/htmlparser/Node;
    :cond_2
    const-string v15, "link"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1230
    const-string v15, "type"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1231
    .local v14, type:Ljava/lang/String;
    if-eqz v14, :cond_3

    const-string v15, "text/css"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$4;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/dictionary/Dictionary;->access$1200(Lcom/asus/dictionary/Dictionary;)Ljava/util/ArrayList;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    .end local v14           #type:Ljava/lang/String;
    :cond_3
    const-string v15, "div"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1238
    if-eqz v8, :cond_0

    .line 1240
    const-string v15, "dct-srch-otr"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$4;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/dictionary/Dictionary;->access$1302(Lcom/asus/dictionary/Dictionary;Lorg/htmlparser/Tag;)Lorg/htmlparser/Tag;

    goto :goto_0

    .line 1245
    :cond_4
    const-string v15, "dct-srch-inr rt-sct-exst"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1247
    const-string v15, "class"

    const-string v16, "dct-srch-inr"

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/htmlparser/Tag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    :cond_5
    const-string v15, "dct-srch-rslt"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1252
    invoke-interface/range {p1 .. p1}, Lorg/htmlparser/Tag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v15

    invoke-virtual {v15}, Lorg/htmlparser/util/NodeList;->toNodeArray()[Lorg/htmlparser/Node;

    move-result-object v4

    .line 1254
    .local v4, childArray:[Lorg/htmlparser/Node;
    move-object v3, v4

    .local v3, arr$:[Lorg/htmlparser/Node;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v5, v3, v9

    .line 1256
    .local v5, childNode:Lorg/htmlparser/Node;
    instance-of v15, v5, Lorg/htmlparser/Tag;

    if-eqz v15, :cond_6

    .line 1257
    move-object v0, v5

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v6, v0

    .line 1258
    .local v6, childTag:Lorg/htmlparser/Tag;
    const-string v15, "id"

    invoke-interface {v6, v15}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1260
    .local v7, childTagId:Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v15, "pr-root"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1261
    new-instance v15, Lorg/htmlparser/util/NodeList;

    invoke-direct {v15, v6}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/Node;)V

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/htmlparser/Tag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/dictionary/Dictionary$4;->this$0:Lcom/asus/dictionary/Dictionary;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/asus/dictionary/Dictionary;->access$1402(Lcom/asus/dictionary/Dictionary;Z)Z

    goto/16 :goto_0

    .line 1254
    .end local v6           #childTag:Lorg/htmlparser/Tag;
    .end local v7           #childTagId:Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1272
    .end local v3           #arr$:[Lorg/htmlparser/Node;
    .end local v4           #childArray:[Lorg/htmlparser/Node;
    .end local v5           #childNode:Lorg/htmlparser/Node;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_7
    const-string v15, "dct-em"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1274
    invoke-interface/range {p1 .. p1}, Lorg/htmlparser/Tag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v15

    invoke-virtual {v15}, Lorg/htmlparser/util/NodeList;->toNodeArray()[Lorg/htmlparser/Node;

    move-result-object v4

    .line 1276
    .restart local v4       #childArray:[Lorg/htmlparser/Node;
    const-string v15, "class"

    const-string v16, ""

    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/htmlparser/Tag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    new-instance v15, Lorg/htmlparser/util/NodeList;

    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x2

    sub-int v16, v16, v17

    aget-object v16, v4, v16

    invoke-direct/range {v15 .. v16}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/Node;)V

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/htmlparser/Tag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    goto/16 :goto_0

    .line 1282
    .end local v4           #childArray:[Lorg/htmlparser/Node;
    :cond_8
    const-string v15, "dct-rt-sct"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1284
    invoke-interface/range {p1 .. p1}, Lorg/htmlparser/Tag;->getParent()Lorg/htmlparser/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->remove(Lorg/htmlparser/Node;)Z

    goto/16 :goto_0
.end method
