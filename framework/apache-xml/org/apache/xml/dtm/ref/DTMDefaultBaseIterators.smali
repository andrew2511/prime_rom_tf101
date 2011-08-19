.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NthDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceAttributeIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;,
        Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;
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
    .line 56
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 58
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
    .line 84
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 86
    return-void
.end method


# virtual methods
.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 8
    .parameter "axis"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    packed-switch p1, :pswitch_data_78

    .line 226
    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :pswitch_1a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$SingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    :goto_1f
    move-object v1, v0

    .line 233
    :goto_20
    return-object v1

    .line 191
    :pswitch_21
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 192
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 194
    :pswitch_27
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_20

    .line 196
    :pswitch_2d
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_20

    .line 198
    :pswitch_33
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_20

    .line 200
    :pswitch_3d
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$AttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    goto :goto_20

    .line 202
    :pswitch_43
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 203
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 205
    :pswitch_49
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$DescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 206
    goto :goto_1f

    .line 208
    :pswitch_53
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 209
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 211
    :pswitch_59
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 212
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 214
    :pswitch_5f
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$FollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 215
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 217
    :pswitch_65
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 218
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 220
    :pswitch_6b
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 221
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 223
    :pswitch_71
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$RootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 224
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 185
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_33
        :pswitch_3d
        :pswitch_21
        :pswitch_43
        :pswitch_49
        :pswitch_53
        :pswitch_5f
        :pswitch_4
        :pswitch_6b
        :pswitch_27
        :pswitch_59
        :pswitch_65
        :pswitch_1a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_71
    .end packed-switch
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 9
    .parameter "axis"
    .parameter "type"

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 118
    .local v0, iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    packed-switch p1, :pswitch_data_7c

    .line 159
    :pswitch_4
    new-instance v1, Lorg/apache/xml/dtm/DTMException;

    const-string v2, "ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_1a
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedSingletonIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    :goto_1f
    move-object v1, v0

    .line 167
    :goto_20
    return-object v1

    .line 124
    :pswitch_21
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedChildrenIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 125
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 127
    :pswitch_27
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$ParentIterator;->setNodeType(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_20

    .line 129
    :pswitch_31
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_20

    .line 131
    :pswitch_37
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAncestorIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    goto :goto_20

    .line 133
    :pswitch_41
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedAttributeIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    goto :goto_20

    .line 135
    :pswitch_47
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 136
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 138
    :pswitch_4d
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;

    invoke-direct {v1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedDescendantIterator;->includeSelf()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    .line 139
    goto :goto_1f

    .line 141
    :pswitch_57
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 142
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 144
    :pswitch_5d
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 145
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 147
    :pswitch_63
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedFollowingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 148
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 150
    :pswitch_69
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingSiblingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 151
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 153
    :pswitch_6f
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 154
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 156
    :pswitch_75
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;

    .end local v0           #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-direct {v0, p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedRootIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V

    .line 157
    .restart local v0       #iterator:Lorg/apache/xml/dtm/DTMAxisIterator;
    goto :goto_1f

    .line 118
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_31
        :pswitch_37
        :pswitch_41
        :pswitch_21
        :pswitch_47
        :pswitch_4d
        :pswitch_57
        :pswitch_63
        :pswitch_4
        :pswitch_6f
        :pswitch_27
        :pswitch_5d
        :pswitch_69
        :pswitch_1a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_75
    .end packed-switch
.end method
