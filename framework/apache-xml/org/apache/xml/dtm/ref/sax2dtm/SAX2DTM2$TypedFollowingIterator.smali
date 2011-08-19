.class public final Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedFollowingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;I)V
    .registers 3
    .parameter
    .parameter "type"

    .prologue
    .line 1157
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;)V

    .line 1158
    iput p2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    .line 1159
    return-void
.end method


# virtual methods
.method public next()I
    .registers 11

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 1172
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_nodeType:I

    .line 1173
    .local v3, nodeType:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    iget v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_currentNode:I

    invoke-virtual {v5, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 1175
    .local v1, currentNodeID:I
    const/16 v5, 0xe

    if-lt v3, v5, :cond_3d

    .line 1177
    :cond_12
    move v2, v1

    .line 1178
    .local v2, node:I
    move v0, v2

    .line 1181
    .local v0, current:I
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 1182
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v4

    .line 1184
    .local v4, type:I
    if-eq v4, v7, :cond_22

    if-eq v8, v4, :cond_14

    if-eq v9, v4, :cond_14

    .line 1186
    :cond_22
    if-eq v4, v7, :cond_3b

    move v1, v0

    .line 1188
    :goto_25
    if-eq v2, v7, :cond_2f

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    if-ne v5, v3, :cond_12

    .line 1207
    :cond_2f
    :goto_2f
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v5

    iput v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->_currentNode:I

    .line 1208
    if-ne v2, v7, :cond_65

    move v5, v7

    :goto_3a
    return v5

    :cond_3b
    move v1, v7

    .line 1186
    goto :goto_25

    .line 1192
    .end local v0           #current:I
    .end local v2           #node:I
    .end local v4           #type:I
    :cond_3d
    move v2, v1

    .line 1193
    .restart local v2       #node:I
    move v0, v2

    .line 1196
    .restart local v0       #current:I
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    .line 1197
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v4

    .line 1199
    .restart local v4       #type:I
    if-eq v4, v7, :cond_4d

    if-eq v8, v4, :cond_3f

    if-eq v9, v4, :cond_3f

    .line 1201
    :cond_4d
    if-eq v4, v7, :cond_63

    move v1, v0

    .line 1204
    :goto_50
    if-eq v2, v7, :cond_2f

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    if-eq v5, v3, :cond_2f

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v5

    if-ne v5, v3, :cond_3d

    goto :goto_2f

    :cond_63
    move v1, v7

    .line 1201
    goto :goto_50

    .line 1208
    :cond_65
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->this$0:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;

    invoke-virtual {v5, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;->returnNode(I)I

    move-result v5

    goto :goto_3a
.end method
