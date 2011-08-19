.class public Lorg/apache/xml/serializer/ToHTMLStream;
.super Lorg/apache/xml/serializer/ToStream;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToHTMLStream$Trie;
    }
.end annotation


# static fields
.field private static final m_dummy:Lorg/apache/xml/serializer/ElemDesc;

.field static final m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;


# instance fields
.field private m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

.field private final m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

.field private m_inBlockElem:Z

.field protected m_inDTD:Z

.field private m_omitMetaTag:Z

.field private m_specialEscapeURLs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    .line 65
    sget-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-static {v0}, Lorg/apache/xml/serializer/ToHTMLStream;->initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    .line 522
    new-instance v0, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream;-><init>()V

    .line 47
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 51
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 57
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    const-string v1, "html"

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/CharInfo;->getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 525
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    .line 528
    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    .line 643
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    .line 666
    iput-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    .line 667
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    .line 669
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0}, Lorg/apache/xml/serializer/NamespaceMappings;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 671
    return-void
.end method

.method public static final getElemDesc(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .registers 3
    .parameter "name"

    .prologue
    .line 631
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_elementFlags:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-virtual {v1, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 633
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .end local v0           #obj:Ljava/lang/Object;
    move-object v1, v0

    .line 634
    :goto_b
    return-object v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_c
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    goto :goto_b
.end method

.method private getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;
    .registers 4
    .parameter "name"

    .prologue
    .line 650
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlInfo:Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 651
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_c

    .line 652
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .end local v0           #obj:Ljava/lang/Object;
    move-object v1, v0

    .line 653
    :goto_b
    return-object v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_c
    sget-object v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_dummy:Lorg/apache/xml/serializer/ElemDesc;

    goto :goto_b
.end method

.method private final getOmitMetaTag()Z
    .registers 2

    .prologue
    .line 615
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    return v0
.end method

.method private final getSpecialEscapeURLs()Z
    .registers 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    return v0
.end method

.method static initTagReference(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .registers 10
    .parameter "m_elementFlags"

    .prologue
    const/16 v8, 0x1000

    const/16 v7, 0x38

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 70
    const-string v1, "BASEFONT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "FRAME"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "FRAMESET"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "NOFRAMES"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "ISINDEX"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "APPLET"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/high16 v3, 0x20

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "CENTER"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "DIR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "MENU"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "TT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "I"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "B"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "BIG"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "SMALL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "EM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "STRONG"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "DFN"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "CODE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "SAMP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "KBD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "VAR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "CITE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "ABBR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "ACRONYM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x2000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "SUP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "SUB"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "SPAN"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "BDO"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "BR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x1800a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "BODY"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "ADDRESS"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "DIV"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "A"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x8000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "MAP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "AREA"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v1, "LINK"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x2000a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "IMG"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x218002

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "OBJECT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x238000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "PARAM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v4}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "HR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "P"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "H1"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "H2"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "H3"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "H4"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "H5"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "H6"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x40008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "PRE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x100008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "Q"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x18000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "BLOCKQUOTE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "INS"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "DEL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "DL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "DT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "DD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "OL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x80008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "UL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x80008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "LI"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "FORM"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "LABEL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4000

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "INPUT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4802

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "SELECT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4800

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "OPTGROUP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "OPTION"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "TEXTAREA"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4800

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "FIELDSET"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "LEGEND"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "BUTTON"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0x4800

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "TABLE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v1, "CAPTION"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "THEAD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "TFOOT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "TBODY"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "COLGROUP"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "COL"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "TR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "TH"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "TD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v1, "HEAD"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x400008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "TITLE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v6}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "BASE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "META"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x2000a

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v1, "STYLE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x20108

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v1, "SCRIPT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x38100

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "NOSCRIPT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "HTML"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    const v3, 0x800008

    invoke-direct {v2, v3}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "FONT"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "S"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "STRIKE"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v1, "U"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v1, "NOBR"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v8}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v1, "IFRAME"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "LAYER"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v1, "ILAYER"

    new-instance v2, Lorg/apache/xml/serializer/ElemDesc;

    invoke-direct {v2, v7}, Lorg/apache/xml/serializer/ElemDesc;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "a"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 348
    .local v0, elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 349
    const-string v1, "NAME"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 352
    const-string v1, "area"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 354
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 355
    const-string v1, "NOHREF"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 358
    const-string v1, "base"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 360
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 363
    const-string v1, "button"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 364
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 367
    const-string v1, "blockquote"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 369
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 372
    const-string v1, "del"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 373
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 376
    const-string v1, "dir"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 377
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 381
    const-string v1, "div"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 382
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 383
    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 386
    const-string v1, "dl"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 387
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 390
    const-string v1, "form"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 391
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "ACTION"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 395
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 396
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 397
    const-string v1, "LONGDESC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 398
    const-string v1, "NORESIZE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 401
    const-string v1, "head"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 402
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "PROFILE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 405
    const-string v1, "hr"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 406
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "NOSHADE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 410
    const-string v1, "iframe"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 411
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 412
    const-string v1, "LONGDESC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 416
    const-string v1, "ilayer"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 417
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 420
    const-string v1, "img"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 421
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 422
    const-string v1, "LONGDESC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 423
    const-string v1, "USEMAP"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 424
    const-string v1, "ISMAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 427
    const-string v1, "input"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 429
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 430
    const-string v1, "USEMAP"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 431
    const-string v1, "CHECKED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 432
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 433
    const-string v1, "ISMAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 434
    const-string v1, "READONLY"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 437
    const-string v1, "ins"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 438
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 442
    const-string v1, "layer"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 443
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 446
    const-string v1, "link"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 447
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "HREF"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 450
    const-string v1, "menu"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 451
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 454
    const-string v1, "object"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 456
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "CLASSID"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 457
    const-string v1, "CODEBASE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 458
    const-string v1, "DATA"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 459
    const-string v1, "ARCHIVE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 460
    const-string v1, "USEMAP"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 461
    const-string v1, "DECLARE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 464
    const-string v1, "ol"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 465
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 468
    const-string v1, "optgroup"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 469
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 472
    const-string v1, "option"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 473
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SELECTED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 474
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 477
    const-string v1, "q"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 478
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "CITE"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 481
    const-string v1, "script"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 482
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "SRC"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 483
    const-string v1, "FOR"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 484
    const-string v1, "DEFER"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 487
    const-string v1, "select"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 488
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 489
    const-string v1, "MULTIPLE"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 492
    const-string v1, "table"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 493
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 496
    const-string v1, "td"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 497
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 500
    const-string v1, "textarea"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 501
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "DISABLED"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 502
    const-string v1, "READONLY"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 505
    const-string v1, "th"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 506
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 511
    const-string v1, "tr"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 512
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "NOWRAP"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 515
    const-string v1, "ul"

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    check-cast v0, Lorg/apache/xml/serializer/ElemDesc;

    .line 516
    .restart local v0       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    const-string v1, "COMPACT"

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/serializer/ElemDesc;->setAttr(Ljava/lang/String;I)V

    .line 517
    return-void
.end method

.method private isASCIIDigit(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 1096
    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isHHSign(Ljava/lang/String;)Z
    .registers 5
    .parameter "str"

    .prologue
    .line 1126
    const/4 v1, 0x1

    .line 1129
    .local v1, sign:Z
    const/16 v2, 0x10

    :try_start_3
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_9

    move-result v2

    int-to-char v2, v2

    .line 1135
    :goto_8
    return v1

    .line 1131
    :catch_9
    move-exception v0

    .line 1133
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private static makeHHString(I)Ljava/lang/String;
    .registers 4
    .parameter "i"

    .prologue
    .line 1110
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1111
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_22
    return-object v0
.end method

.method private outputDocTypeDecl(Ljava/lang/String;)V
    .registers 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    if-ne v4, v5, :cond_43

    .line 703
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, doctypeSystem:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, doctypePublic:Ljava/lang/String;
    if-nez v1, :cond_11

    if-eqz v0, :cond_43

    .line 707
    :cond_11
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    .line 710
    .local v3, writer:Ljava/io/Writer;
    :try_start_13
    const-string v4, "<!DOCTYPE "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 713
    if-eqz v0, :cond_2a

    .line 715
    const-string v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 717
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 720
    :cond_2a
    if-eqz v1, :cond_3b

    .line 722
    if-nez v0, :cond_47

    .line 723
    const-string v4, " SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 727
    :goto_33
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 728
    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 731
    :cond_3b
    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 732
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_43} :catch_4d

    .line 741
    .end local v0           #doctypePublic:Ljava/lang/String;
    .end local v1           #doctypeSystem:Ljava/lang/String;
    .end local v3           #writer:Ljava/io/Writer;
    :cond_43
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    .line 742
    return-void

    .line 725
    .restart local v0       #doctypePublic:Ljava/lang/String;
    .restart local v1       #doctypeSystem:Ljava/lang/String;
    .restart local v3       #writer:Ljava/io/Writer;
    :cond_47
    :try_start_47
    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_33

    .line 734
    :catch_4d
    move-exception v4

    move-object v2, v4

    .line 736
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private resetToHTMLStream()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2025
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 2026
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 2027
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    .line 2028
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    .line 2029
    return-void
.end method


# virtual methods
.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1935
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    .line 1936
    .local v1, writer:Ljava/io/Writer;
    and-int/lit8 v2, p3, 0x1

    if-lez v2, :cond_22

    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_htmlcharInfo:Lorg/apache/xml/serializer/CharInfo;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    if-eqz v2, :cond_22

    .line 1943
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1944
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1945
    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1947
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1974
    :goto_21
    return-void

    .line 1949
    :cond_22
    and-int/lit8 v2, p3, 0x2

    if-lez v2, :cond_43

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1953
    :cond_32
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1954
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_21

    .line 1971
    .end local v1           #writer:Ljava/io/Writer;
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 1972
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1958
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #writer:Ljava/io/Writer;
    :cond_43
    const/16 v2, 0x20

    :try_start_45
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1959
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1960
    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1961
    and-int/lit8 v2, p3, 0x4

    if-lez v2, :cond_5f

    .line 1963
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1969
    :goto_59
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_21

    .line 1967
    :cond_5f
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_66} :catch_3b

    goto :goto_59
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "eName"
    .parameter "aName"
    .parameter "type"
    .parameter "valueDefault"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1891
    return-void
.end method

.method public final cdata([CII)V
    .registers 11
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1597
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1603
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_2c

    .line 1605
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1606
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1609
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    .line 1611
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->shouldIndent()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1612
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    .line 1615
    :cond_38
    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeNormalizedChars([CIIZZ)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_42} :catch_43

    .line 1631
    :goto_42
    return-void

    .line 1617
    :catch_43
    move-exception v0

    move-object v6, v0

    .line 1619
    .local v6, ioe:Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_OIERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 1629
    .end local v6           #ioe:Ljava/io/IOException;
    :cond_54
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->cdata([CII)V

    goto :goto_42
.end method

.method public final characters([CII)V
    .registers 11
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1533
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    if-eqz v0, :cond_3a

    .line 1538
    :try_start_6
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_14

    .line 1540
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1541
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1544
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    .line 1546
    const/4 v4, 0x0

    iget-boolean v5, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_lineSepUse:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeNormalizedChars([CIIZZ)V

    .line 1549
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_28

    .line 1550
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->fireCharEvent([CII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_29

    .line 1564
    :cond_28
    :goto_28
    return-void

    .line 1554
    :catch_29
    move-exception v0

    move-object v6, v0

    .line 1556
    .local v6, ioe:Ljava/io/IOException;
    new-instance v0, Lorg/xml/sax/SAXException;

    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_OIERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 1562
    .end local v6           #ioe:Ljava/io/IOException;
    :cond_3a
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->characters([CII)V

    goto :goto_28
.end method

.method protected closeStartTag()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1796
    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_b

    .line 1797
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-super {p0, v2}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    .line 1799
    :cond_b
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v1

    .line 1800
    .local v1, nAttrs:I
    if-lez v1, :cond_1d

    .line 1802
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v2, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    .line 1804
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 1807
    :cond_1d
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 1813
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_CdataElems:Ljava/util/Hashtable;

    if-eqz v2, :cond_30

    .line 1814
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->isCdataSection()Z

    move-result v3

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_isCdataSection:Z

    .line 1815
    :cond_30
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v2, :cond_3e

    .line 1817
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    .line 1818
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    iget-boolean v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/ToStream$BoolStack;->push(Z)Z
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 1826
    :cond_3e
    return-void

    .line 1822
    .end local v1           #nAttrs:I
    :catch_3f
    move-exception v2

    move-object v0, v2

    .line 1824
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public comment([CII)V
    .registers 6
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1980
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    if-eqz v0, :cond_5

    .line 2010
    :goto_4
    return-void

    .line 1987
    :cond_5
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_20

    .line 1989
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1990
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 2006
    :cond_13
    :goto_13
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    if-eqz v0, :cond_1c

    .line 2007
    const-string v0, "html"

    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    .line 2009
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->comment([CII)V

    goto :goto_4

    .line 1992
    :cond_20
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    if-eqz v0, :cond_28

    .line 1994
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    goto :goto_13

    .line 1996
    :cond_28
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_13

    .line 1998
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    goto :goto_13
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1899
    return-void
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 1878
    return-void
.end method

.method public final endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushPending()V

    .line 756
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    if-nez v1, :cond_e

    .line 760
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_19

    .line 768
    :cond_e
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushWriter()V

    .line 769
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_18

    .line 770
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->fireEndDoc()V

    .line 771
    :cond_18
    return-void

    .line 762
    :catch_19
    move-exception v0

    .line 764
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endElement(Ljava/lang/String;)V
    .registers 3
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1753
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/xml/serializer/ToHTMLStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 935
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    if-eqz v9, :cond_9

    .line 936
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    .line 939
    :cond_9
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_15

    .line 941
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :goto_14
    return-void

    .line 949
    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 950
    .local v1, elemContext:Lorg/apache/xml/serializer/ElemContext;
    iget-object v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 951
    .local v2, elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    invoke-virtual {v2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    move-result v4

    .line 952
    .local v4, elemFlags:I
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_78

    move v3, v10

    .line 955
    .local v3, elemEmpty:Z
    :goto_22
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v9, :cond_44

    .line 957
    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_7a

    move v5, v10

    .line 958
    .local v5, isBlockElement:Z
    :goto_2b
    const/4 v7, 0x0

    .line 960
    .local v7, shouldIndent:Z
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    if-eqz v9, :cond_7c

    .line 962
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    .line 969
    :cond_33
    :goto_33
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v9, :cond_3f

    if-eqz v7, :cond_3f

    .line 970
    iget v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lorg/apache/xml/serializer/ToHTMLStream;->indent(I)V

    .line 971
    :cond_3f
    if-nez v5, :cond_8b

    move v9, v10

    :goto_42
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 974
    .end local v5           #isBlockElement:Z
    .end local v7           #shouldIndent:Z
    :cond_44
    iget-object v8, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    .line 975
    .local v8, writer:Ljava/io/Writer;
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v9, :cond_8d

    .line 977
    const-string v9, "</"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 979
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    .line 1016
    :goto_57
    const/high16 v9, 0x20

    and-int/2addr v9, v4

    if-eqz v9, :cond_5f

    .line 1017
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    .line 1018
    :cond_5f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    .line 1021
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v9, :cond_69

    .line 1022
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireEndElem(Ljava/lang/String;)V

    .line 1025
    :cond_69
    if-eqz v3, :cond_bc

    .line 1030
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_6f} :catch_70

    goto :goto_14

    .line 1043
    .end local v1           #elemContext:Lorg/apache/xml/serializer/ElemContext;
    .end local v2           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    .end local v3           #elemEmpty:Z
    .end local v4           #elemFlags:I
    .end local v8           #writer:Ljava/io/Writer;
    :catch_70
    move-exception v9

    move-object v0, v9

    .line 1045
    .local v0, e:Ljava/io/IOException;
    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #elemContext:Lorg/apache/xml/serializer/ElemContext;
    .restart local v2       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    .restart local v4       #elemFlags:I
    :cond_78
    move v3, v11

    .line 952
    goto :goto_22

    .restart local v3       #elemEmpty:Z
    :cond_7a
    move v5, v11

    .line 957
    goto :goto_2b

    .line 964
    .restart local v5       #isBlockElement:Z
    .restart local v7       #shouldIndent:Z
    :cond_7c
    :try_start_7c
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v9, :cond_33

    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v9, :cond_86

    if-eqz v5, :cond_33

    .line 966
    :cond_86
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z

    .line 967
    const/4 v7, 0x1

    goto :goto_33

    :cond_8b
    move v9, v11

    .line 971
    goto :goto_42

    .line 986
    .end local v5           #isBlockElement:Z
    .end local v7           #shouldIndent:Z
    .restart local v8       #writer:Ljava/io/Writer;
    :cond_8d
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v9, :cond_94

    .line 987
    invoke-super {p0, p3}, Lorg/apache/xml/serializer/ToStream;->fireStartElem(Ljava/lang/String;)V

    .line 991
    :cond_94
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getLength()I

    move-result v6

    .line 992
    .local v6, nAttrs:I
    if-lez v6, :cond_a6

    .line 994
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    invoke-virtual {p0, v9, v6}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttributes(Ljava/io/Writer;I)V

    .line 996
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 998
    :cond_a6
    if-nez v3, :cond_b6

    .line 1005
    const-string v9, "></"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1007
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    goto :goto_57

    .line 1011
    :cond_b6
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    goto :goto_57

    .line 1035
    .end local v6           #nAttrs:I
    :cond_bc
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-nez v9, :cond_d1

    .line 1037
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v9, :cond_d1

    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/ToStream$BoolStack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d1

    .line 1038
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_preserves:Lorg/apache/xml/serializer/ToStream$BoolStack;

    invoke-virtual {v9}, Lorg/apache/xml/serializer/ToStream$BoolStack;->pop()Z

    .line 1040
    :cond_d1
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_prev:Lorg/apache/xml/serializer/ElemContext;

    iput-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_d5} :catch_70

    goto/16 :goto_14
.end method

.method public final entityReference(Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1738
    :try_start_0
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    .line 1739
    .local v1, writer:Ljava/io/Writer;
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1740
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1741
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1747
    return-void

    .line 1743
    .end local v1           #writer:Ljava/io/Writer;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 1745
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1918
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1907
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1845
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 1847
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v1, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToHTMLStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, prefix1:Ljava/lang/String;
    if-nez v0, :cond_1c

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1854
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 1857
    .end local v0           #prefix1:Ljava/lang/String;
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1858
    return-void
.end method

.method protected processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V
    .registers 6
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .parameter "elemDesc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1068
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_11
    if-eqz p4, :cond_1e

    const/4 v0, 0x4

    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1072
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1089
    :goto_1d
    return-void

    .line 1079
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1080
    const-string v0, "=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1081
    if-eqz p4, :cond_3a

    const/4 v0, 0x2

    invoke-virtual {p4, p2, v0}, Lorg/apache/xml/serializer/ElemDesc;->isAttrFlagSet(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1083
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 1086
    :goto_34
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_1d

    .line 1085
    :cond_3a
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/xml/serializer/ToHTMLStream;->writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public processAttributes(Ljava/io/Writer;I)V
    .registers 7
    .parameter "writer"
    .parameter "nAttrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1773
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_19

    .line 1775
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v3, v3, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/xml/serializer/ToHTMLStream;->processAttribute(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xml/serializer/ElemDesc;)V

    .line 1773
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1781
    :cond_19
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1649
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->flushPending()V

    .line 1653
    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1655
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startNonEscaping()V

    .line 1721
    :goto_f
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_16

    .line 1722
    invoke-super {p0, p1, p2}, Lorg/apache/xml/serializer/ToStream;->fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_16
    return-void

    .line 1657
    :cond_17
    const-string v2, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1659
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->endNonEscaping()V

    goto :goto_f

    .line 1666
    :cond_23
    :try_start_23
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v2, :cond_80

    .line 1668
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 1669
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 1687
    :cond_31
    :goto_31
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    if-ne v4, v2, :cond_3a

    .line 1688
    const-string v2, "html"

    invoke-direct {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    .line 1691
    :cond_3a
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->shouldIndent()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1692
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    .line 1694
    :cond_43
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    .line 1696
    .local v1, writer:Ljava/io/Writer;
    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_63

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_63

    .line 1700
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1703
    :cond_63
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1704
    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 1709
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-gtz v2, :cond_74

    .line 1710
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->outputLineSep()V

    .line 1712
    :cond_74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_77} :catch_78

    goto :goto_f

    .line 1714
    .end local v1           #writer:Ljava/io/Writer;
    :catch_78
    move-exception v2

    move-object v0, v2

    .line 1716
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-direct {v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1671
    .end local v0           #e:Ljava/io/IOException;
    :cond_80
    :try_start_80
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    if-eqz v2, :cond_88

    .line 1673
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    goto :goto_31

    .line 1675
    :cond_88
    iget-boolean v2, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    if-eqz v2, :cond_31

    .line 1677
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8f} :catch_78

    goto :goto_31
.end method

.method public reset()Z
    .registers 3

    .prologue
    .line 2014
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->reset()Z

    move-result v0

    .line 2015
    .local v0, ret:Z
    if-nez v0, :cond_8

    .line 2016
    const/4 v1, 0x0

    .line 2018
    :goto_7
    return v1

    .line 2017
    :cond_8
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->resetToHTMLStream()V

    .line 2018
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public setOmitMetaTag(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 547
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    .line 548
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .registers 4
    .parameter "format"

    .prologue
    .line 574
    const-string v1, "{http://xml.apache.org/xalan}use-url-escaping"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 576
    const-string v1, "{http://xml.apache.org/xalan}use-url-escaping"

    invoke-static {v1, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    .line 587
    :cond_10
    const-string v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_20

    .line 589
    const-string v1, "{http://xml.apache.org/xalan}omit-meta-tag"

    invoke-static {v1, p1}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    .line 595
    :cond_20
    invoke-super {p0, p1}, Lorg/apache/xml/serializer/ToStream;->setOutputFormat(Ljava/util/Properties;)V

    .line 596
    return-void
.end method

.method public setSpecialEscapeURLs(Z)V
    .registers 2
    .parameter "bool"

    .prologue
    .line 537
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_specialEscapeURLs:Z

    .line 538
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inDTD:Z

    .line 1864
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xml/serializer/ToStream;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    return-void
.end method

.method protected startDocumentInternal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 686
    invoke-super {p0}, Lorg/apache/xml/serializer/ToStream;->startDocumentInternal()V

    .line 688
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    .line 689
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    .line 690
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z

    .line 691
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->setOmitXMLDeclaration(Z)V

    .line 692
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 15
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "name"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 797
    .local v1, elemContext:Lorg/apache/xml/serializer/ElemContext;
    iget-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v9, :cond_29

    .line 799
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 800
    const/4 v9, 0x0

    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 813
    :cond_c
    :goto_c
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToOutputDocTypeDecl:Z

    if-eqz v9, :cond_1d

    .line 814
    move-object v7, p3

    .line 815
    .local v7, n:Ljava/lang/String;
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1a

    .line 818
    :cond_19
    move-object v7, p2

    .line 820
    :cond_1a
    invoke-direct {p0, v7}, Lorg/apache/xml/serializer/ToHTMLStream;->outputDocTypeDecl(Ljava/lang/String;)V

    .line 825
    .end local v7           #n:Ljava/lang/String;
    :cond_1d
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3f

    .line 827
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/ToStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 916
    :cond_28
    :goto_28
    return-void

    .line 802
    :cond_29
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    if-eqz v9, :cond_34

    .line 804
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeCDATA()V

    .line 805
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_cdataTagOpen:Z

    goto :goto_c

    .line 807
    :cond_34
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    if-eqz v9, :cond_c

    .line 809
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->startDocumentInternal()V

    .line 810
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_needToCallStartDocument:Z

    goto :goto_c

    .line 835
    :cond_3f
    :try_start_3f
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToHTMLStream;->getElemDesc2(Ljava/lang/String;)Lorg/apache/xml/serializer/ElemDesc;

    move-result-object v2

    .line 836
    .local v2, elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    invoke-virtual {v2}, Lorg/apache/xml/serializer/ElemDesc;->getFlags()I

    move-result v3

    .line 839
    .local v3, elemFlags:I
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v9, :cond_5d

    .line 842
    and-int/lit8 v9, v3, 0x8

    if-eqz v9, :cond_91

    const/4 v9, 0x1

    move v6, v9

    .line 843
    .local v6, isBlockElement:Z
    :goto_51
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    if-eqz v9, :cond_94

    .line 844
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_ispreserve:Z

    .line 856
    :cond_58
    :goto_58
    if-nez v6, :cond_a5

    const/4 v9, 0x1

    :goto_5b
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    .line 860
    .end local v6           #isBlockElement:Z
    :cond_5d
    if-eqz p4, :cond_62

    .line 861
    invoke-virtual {p0, p4}, Lorg/apache/xml/serializer/ToHTMLStream;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 863
    :cond_62
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_isprevtext:Z

    .line 864
    iget-object v8, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_writer:Ljava/io/Writer;

    .line 865
    .local v8, writer:Ljava/io/Writer;
    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(I)V

    .line 866
    invoke-virtual {v8, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 870
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v9, :cond_76

    .line 871
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->firePseudoAttributes()V

    .line 873
    :cond_76
    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_a7

    .line 877
    invoke-virtual {v1}, Lorg/apache/xml/serializer/ElemContext;->push()Lorg/apache/xml/serializer/ElemContext;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 881
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object p3, v9, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    .line 882
    iget-object v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object v2, v9, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_88} :catch_89

    goto :goto_28

    .line 912
    .end local v2           #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    .end local v3           #elemFlags:I
    .end local v8           #writer:Ljava/io/Writer;
    :catch_89
    move-exception v9

    move-object v0, v9

    .line 914
    .local v0, e:Ljava/io/IOException;
    new-instance v9, Lorg/xml/sax/SAXException;

    invoke-direct {v9, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 842
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #elemDesc:Lorg/apache/xml/serializer/ElemDesc;
    .restart local v3       #elemFlags:I
    :cond_91
    const/4 v9, 0x0

    move v6, v9

    goto :goto_51

    .line 845
    .restart local v6       #isBlockElement:Z
    :cond_94
    :try_start_94
    iget-object v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-eqz v9, :cond_58

    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_inBlockElem:Z

    if-eqz v9, :cond_9e

    if-eqz v6, :cond_58

    .line 851
    :cond_9e
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_startNewLine:Z

    .line 853
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    goto :goto_58

    .line 856
    :cond_a5
    const/4 v9, 0x0

    goto :goto_5b

    .line 887
    .end local v6           #isBlockElement:Z
    .restart local v8       #writer:Ljava/io/Writer;
    :cond_a7
    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xml/serializer/ElemContext;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/ElemContext;

    move-result-object v1

    .line 888
    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 889
    iput-object v2, v1, Lorg/apache/xml/serializer/ElemContext;->m_elementDesc:Lorg/apache/xml/serializer/ElemDesc;

    .line 890
    and-int/lit16 v9, v3, 0x100

    if-eqz v9, :cond_e3

    const/4 v9, 0x1

    :goto_b4
    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_isRaw:Z

    .line 894
    const/high16 v9, 0x40

    and-int/2addr v9, v3

    if-eqz v9, :cond_28

    .line 897
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->closeStartTag()V

    .line 898
    const/4 v9, 0x0

    iput-boolean v9, v1, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 899
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_omitMetaTag:Z

    if-nez v9, :cond_28

    .line 901
    iget-boolean v9, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_doIndent:Z

    if-eqz v9, :cond_cc

    .line 902
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->indent()V

    .line 903
    :cond_cc
    const-string v9, "<META http-equiv=\"Content-Type\" content=\"text/html; charset="

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lorg/apache/xml/serializer/ToHTMLStream;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 906
    .local v5, encoding:Ljava/lang/String;
    invoke-static {v5}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 907
    .local v4, encode:Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 908
    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_e1} :catch_89

    goto/16 :goto_28

    .line 890
    .end local v4           #encode:Ljava/lang/String;
    .end local v5           #encoding:Ljava/lang/String;
    :cond_e3
    const/4 v9, 0x0

    goto :goto_b4
.end method

.method public writeAttrString(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "writer"
    .parameter "string"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 1391
    .local v5, end:I
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    array-length v0, v0

    if-le v5, v0, :cond_13

    .line 1393
    mul-int/lit8 v0, v5, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    .line 1395
    :cond_13
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    invoke-virtual {p2, v6, v5, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1396
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    .line 1400
    .local v4, chars:[C
    const/4 v9, 0x0

    .line 1401
    .local v9, cleanStart:I
    const/4 v8, 0x0

    .line 1403
    .local v8, cleanLength:I
    const/4 v2, 0x0

    .line 1404
    .local v2, ch:C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1e
    if-ge v3, v5, :cond_99

    .line 1406
    aget-char v2, v4, v3

    .line 1412
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1414
    add-int/lit8 v8, v8, 0x1

    .line 1404
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1416
    :cond_35
    const/16 v0, 0x3c

    if-eq v0, v2, :cond_3d

    const/16 v0, 0x3e

    if-ne v0, v2, :cond_40

    .line 1418
    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 1420
    :cond_40
    const/16 v0, 0x26

    if-ne v0, v2, :cond_53

    add-int/lit8 v0, v3, 0x1

    if-ge v0, v5, :cond_53

    const/16 v0, 0x7b

    add-int/lit8 v1, v3, 0x1

    aget-char v1, v4, v1

    if-ne v0, v1, :cond_53

    .line 1423
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 1427
    :cond_53
    if-lez v8, :cond_59

    .line 1429
    invoke-virtual {p1, v4, v9, v8}, Ljava/io/Writer;->write([CII)V

    .line 1430
    const/4 v8, 0x0

    :cond_59
    move-object v0, p0

    move-object v1, p1

    .line 1432
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xml/serializer/ToHTMLStream;->accumDefaultEntity(Ljava/io/Writer;CI[CIZZ)I

    move-result v11

    .line 1434
    .local v11, pos:I
    if-eq v3, v11, :cond_66

    .line 1436
    sub-int v3, v11, v7

    .line 1476
    :goto_63
    add-int/lit8 v9, v3, 0x1

    goto :goto_32

    .line 1440
    :cond_66
    invoke-static {v2}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1443
    invoke-virtual {p0, v2, v4, v3, v5}, Lorg/apache/xml/serializer/ToHTMLStream;->writeUTF16Surrogate(C[CII)I

    .line 1444
    add-int/lit8 v3, v3, 0x1

    .line 1460
    :cond_71
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream;->m_charInfo:Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {v0, v2}, Lorg/apache/xml/serializer/CharInfo;->getOutputStringForChar(C)Ljava/lang/String;

    move-result-object v10

    .line 1461
    .local v10, outputStringForChar:Ljava/lang/String;
    if-eqz v10, :cond_7d

    .line 1463
    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_63

    .line 1465
    :cond_7d
    invoke-virtual {p0, v2}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1467
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_63

    .line 1471
    :cond_87
    const-string v0, "&#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1472
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1473
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_63

    .line 1482
    .end local v10           #outputStringForChar:Ljava/lang/String;
    .end local v11           #pos:I
    :cond_99
    if-le v8, v7, :cond_a5

    .line 1487
    if-nez v9, :cond_a1

    .line 1488
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1498
    :cond_a0
    :goto_a0
    return-void

    .line 1490
    :cond_a1
    invoke-virtual {p1, v4, v9, v8}, Ljava/io/Writer;->write([CII)V

    goto :goto_a0

    .line 1492
    :cond_a5
    if-ne v8, v7, :cond_a0

    .line 1496
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_a0
.end method

.method public writeAttrURI(Ljava/io/Writer;Ljava/lang/String;Z)V
    .registers 32
    .parameter "writer"
    .parameter "string"
    .parameter "doURLEscaping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    .line 1168
    .local v13, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_24

    .line 1170
    mul-int/lit8 v25, v13, 0x2

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    .line 1172
    :cond_24
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    move v2, v13

    move-object/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/ToHTMLStream;->m_attrBuff:[C

    move-object v10, v0

    .line 1175
    .local v10, chars:[C
    const/4 v12, 0x0

    .line 1176
    .local v12, cleanStart:I
    const/4 v11, 0x0

    .line 1179
    .local v11, cleanLength:I
    const/4 v9, 0x0

    .line 1180
    .local v9, ch:C
    const/16 v16, 0x0

    .local v16, i:I
    :goto_44
    move/from16 v0, v16

    move v1, v13

    if-ge v0, v1, :cond_23e

    .line 1182
    aget-char v9, v10, v16

    .line 1184
    const/16 v25, 0x20

    move v0, v9

    move/from16 v1, v25

    if-lt v0, v1, :cond_59

    const/16 v25, 0x7e

    move v0, v9

    move/from16 v1, v25

    if-le v0, v1, :cond_1f0

    .line 1186
    :cond_59
    if-lez v11, :cond_64

    .line 1188
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1189
    const/4 v11, 0x0

    .line 1191
    :cond_64
    if-eqz p3, :cond_1c0

    .line 1203
    const/16 v25, 0x7f

    move v0, v9

    move/from16 v1, v25

    if-gt v0, v1, :cond_86

    .line 1205
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1206
    invoke-static {v9}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1302
    :goto_81
    add-int/lit8 v12, v16, 0x1

    .line 1180
    :goto_83
    add-int/lit8 v16, v16, 0x1

    goto :goto_44

    .line 1208
    :cond_86
    const/16 v25, 0x7ff

    move v0, v9

    move/from16 v1, v25

    if-gt v0, v1, :cond_c5

    .line 1212
    shr-int/lit8 v25, v9, 0x6

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0xc0

    move v14, v0

    .line 1213
    .local v14, high:I
    and-int/lit8 v25, v9, 0x3f

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    .line 1215
    .local v17, low:I
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1216
    invoke-static {v14}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1217
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1218
    invoke-static/range {v17 .. v17}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_81

    .line 1220
    .end local v14           #high:I
    .end local v17           #low:I
    :cond_c5
    invoke-static {v9}, Lorg/apache/xml/serializer/Encodings;->isHighUTF16Surrogate(C)Z

    move-result v25

    if-eqz v25, :cond_166

    .line 1230
    and-int/lit16 v15, v9, 0x3ff

    .line 1236
    .local v15, highSurrogate:I
    move v0, v15

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v25, v0

    shr-int/lit8 v21, v25, 0x6

    .line 1237
    .local v21, wwww:I
    add-int/lit8 v20, v21, 0x1

    .line 1240
    .local v20, uuuuu:I
    and-int/lit8 v25, v15, 0x3c

    shr-int/lit8 v24, v25, 0x2

    .line 1243
    .local v24, zzzz:I
    and-int/lit8 v25, v15, 0x3

    shl-int/lit8 v25, v25, 0x4

    and-int/lit8 v23, v25, 0x30

    .line 1246
    .local v23, yyyyyy:I
    add-int/lit8 v16, v16, 0x1

    aget-char v9, v10, v16

    .line 1249
    move v0, v9

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v18, v0

    .line 1252
    .local v18, lowSurrogate:I
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x6

    or-int v23, v23, v25

    .line 1255
    and-int/lit8 v22, v18, 0x3f

    .line 1257
    .local v22, xxxxxx:I
    shr-int/lit8 v25, v20, 0x2

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0xf0

    move v5, v0

    .line 1258
    .local v5, byte1:I
    and-int/lit8 v25, v20, 0x3

    shl-int/lit8 v25, v25, 0x4

    and-int/lit8 v25, v25, 0x30

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0x80

    move/from16 v25, v0

    or-int v6, v25, v24

    .line 1260
    .local v6, byte2:I
    move/from16 v0, v23

    or-int/lit16 v0, v0, 0x80

    move v7, v0

    .line 1261
    .local v7, byte3:I
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move v8, v0

    .line 1263
    .local v8, byte4:I
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1264
    invoke-static {v5}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1265
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1266
    invoke-static {v6}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1267
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1268
    invoke-static {v7}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1269
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1270
    invoke-static {v8}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1274
    .end local v5           #byte1:I
    .end local v6           #byte2:I
    .end local v7           #byte3:I
    .end local v8           #byte4:I
    .end local v15           #highSurrogate:I
    .end local v18           #lowSurrogate:I
    .end local v20           #uuuuu:I
    .end local v21           #wwww:I
    .end local v22           #xxxxxx:I
    .end local v23           #yyyyyy:I
    .end local v24           #zzzz:I
    :cond_166
    shr-int/lit8 v25, v9, 0xc

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0xe0

    move v14, v0

    .line 1275
    .restart local v14       #high:I
    move v0, v9

    and-int/lit16 v0, v0, 0xfc0

    move/from16 v25, v0

    shr-int/lit8 v25, v25, 0x6

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    .line 1277
    .local v19, middle:I
    and-int/lit8 v25, v9, 0x3f

    move/from16 v0, v25

    or-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    .line 1279
    .restart local v17       #low:I
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1280
    invoke-static {v14}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1281
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1282
    invoke-static/range {v19 .. v19}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1283
    const/16 v25, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1284
    invoke-static/range {v17 .. v17}, Lorg/apache/xml/serializer/ToHTMLStream;->makeHHString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 1288
    .end local v14           #high:I
    .end local v17           #low:I
    .end local v19           #middle:I
    :cond_1c0
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/ToHTMLStream;->escapingNotNeeded(C)Z

    move-result v25

    if-eqz v25, :cond_1d1

    .line 1290
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_81

    .line 1294
    :cond_1d1
    const-string v25, "&#"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1295
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1296
    const/16 v25, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_81

    .line 1307
    :cond_1f0
    const/16 v25, 0x22

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_21b

    .line 1319
    if-lez v11, :cond_202

    .line 1321
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1322
    const/4 v11, 0x0

    .line 1327
    :cond_202
    if-eqz p3, :cond_211

    .line 1328
    const-string v25, "%22"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1334
    :goto_20d
    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_83

    .line 1330
    :cond_211
    const-string v25, "&quot;"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_20d

    .line 1336
    :cond_21b
    const/16 v25, 0x26

    move v0, v9

    move/from16 v1, v25

    if-ne v0, v1, :cond_23a

    .line 1341
    if-lez v11, :cond_22d

    .line 1343
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 1344
    const/4 v11, 0x0

    .line 1346
    :cond_22d
    const-string v25, "&amp;"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1347
    add-int/lit8 v12, v16, 0x1

    goto/16 :goto_83

    .line 1353
    :cond_23a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_83

    .line 1359
    :cond_23e
    const/16 v25, 0x1

    move v0, v11

    move/from16 v1, v25

    if-le v0, v1, :cond_254

    .line 1364
    if-nez v12, :cond_24b

    .line 1365
    invoke-virtual/range {p1 .. p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1375
    :cond_24a
    :goto_24a
    return-void

    .line 1367
    :cond_24b
    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v12

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_24a

    .line 1369
    :cond_254
    const/16 v25, 0x1

    move v0, v11

    move/from16 v1, v25

    if-ne v0, v1, :cond_24a

    .line 1373
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_24a
.end method
