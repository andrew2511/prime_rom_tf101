.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$IndexedDTMAxisTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 7
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 10
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"
    .parameter "blocksize"
    .parameter "usePrevsib"
    .parameter "newNameTable"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 91
    return-void
.end method


# virtual methods
.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .registers 8
    .parameter "axis"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 106
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    if-nez v1, :cond_27

    .line 108
    invoke-static {}, Lorg/apache/xml/dtm/Axis;->getNamesLength()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 109
    const/4 v0, 0x0

    .line 119
    .local v0, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_10
    packed-switch p1, :pswitch_data_c8

    .line 184
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_UNKNOWN_AXIS_TYPE"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_27
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aget-object v0, v1, p1

    .line 115
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 194
    :goto_2e
    return-object v1

    .line 122
    :pswitch_2f
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 187
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :goto_34
    if-nez v0, :cond_c1

    .line 188
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_AXIS_TRAVERSER_NOT_SUPPORTED"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :pswitch_4a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AncestorOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 126
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 128
    :pswitch_50
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AttributeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 129
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 131
    :pswitch_56
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ChildTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 132
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 134
    :pswitch_5c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 135
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 137
    :pswitch_62
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 138
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 140
    :pswitch_68
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 141
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 143
    :pswitch_6e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$FollowingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 144
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 146
    :pswitch_74
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 147
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 149
    :pswitch_7a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceDeclsTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 150
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 152
    :pswitch_80
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$ParentTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 153
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 155
    :pswitch_86
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 156
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 158
    :pswitch_8c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingSiblingTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 159
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 161
    :pswitch_92
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$SelfTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 162
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 164
    :pswitch_98
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 165
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 167
    :pswitch_9e
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$AllFromNodeTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 168
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 170
    :pswitch_a4
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$PrecedingAndAncestorTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 171
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 173
    :pswitch_aa
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 174
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto :goto_34

    .line 176
    :pswitch_b0
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$DescendantOrSelfFromRootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 177
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto/16 :goto_34

    .line 179
    :pswitch_b7
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;

    .end local v0           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-direct {v0, p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$RootTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V

    .line 180
    .restart local v0       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    goto/16 :goto_34

    :pswitch_be
    move-object v1, v2

    .line 182
    goto/16 :goto_2e

    .line 192
    :cond_c1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

    aput-object v0, v1, p1

    move-object v1, v0

    .line 194
    goto/16 :goto_2e

    .line 119
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_4a
        :pswitch_50
        :pswitch_56
        :pswitch_5c
        :pswitch_62
        :pswitch_68
        :pswitch_6e
        :pswitch_7a
        :pswitch_74
        :pswitch_80
        :pswitch_86
        :pswitch_8c
        :pswitch_92
        :pswitch_9e
        :pswitch_a4
        :pswitch_98
        :pswitch_aa
        :pswitch_b0
        :pswitch_b7
        :pswitch_be
    .end packed-switch
.end method
