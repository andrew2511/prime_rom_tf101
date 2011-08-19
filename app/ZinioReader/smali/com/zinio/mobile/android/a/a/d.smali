.class public final Lcom/zinio/mobile/android/a/a/d;
.super Lcom/zinio/mobile/android/b/a/m;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/a/a/ab;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;

.field private m:Lcom/zinio/mobile/android/a/a/p;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/zinio/mobile/android/b/a/m;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->b:Z

    .line 22
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->c:Z

    .line 23
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->d:Z

    .line 24
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->e:Z

    .line 25
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->f:Z

    .line 26
    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->g:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-interface {p1, p0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/zinio/mobile/android/a/a/ab;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->a:Lcom/zinio/mobile/android/a/a/ab;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->e:Z

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->f:Z

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/d;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->r:Ljava/lang/String;

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->r:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_2
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->g:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, "toc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iput-boolean p3, p0, Lcom/zinio/mobile/android/a/a/d;->b:Z

    .line 52
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->b:Z

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "version"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->h:Ljava/lang/String;

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Lcom/zinio/mobile/android/a/a/ab;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/d;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/d;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/zinio/mobile/android/a/a/d;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/zinio/mobile/android/a/a/d;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/zinio/mobile/android/a/a/d;->l:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->a:Lcom/zinio/mobile/android/a/a/ab;

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "publication"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iput-boolean p3, p0, Lcom/zinio/mobile/android/a/a/d;->c:Z

    .line 62
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->c:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "name"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->i:Ljava/lang/String;

    .line 64
    const-string v0, "issueTitle"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->j:Ljava/lang/String;

    .line 65
    const-string v0, "coverDate"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->k:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->l:Ljava/util/Map;

    goto :goto_0

    .line 71
    :cond_3
    const-string v0, "section"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iput-boolean p3, p0, Lcom/zinio/mobile/android/a/a/d;->d:Z

    .line 74
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->d:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "title"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "order"

    invoke-static {v1, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    new-instance v2, Lcom/zinio/mobile/android/a/a/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/zinio/mobile/android/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/zinio/mobile/android/a/a/d;->m:Lcom/zinio/mobile/android/a/a/p;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/d;->l:Ljava/util/Map;

    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/d;->m:Lcom/zinio/mobile/android/a/a/p;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_4
    const-string v0, "article"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    iput-boolean p3, p0, Lcom/zinio/mobile/android/a/a/d;->e:Z

    .line 87
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->e:Z

    if-eqz v0, :cond_5

    .line 88
    const-string v0, "name"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->n:Ljava/lang/String;

    .line 89
    const-string v0, "id"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/a/a/d;->o:I

    .line 90
    const-string v0, "title"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->p:Ljava/lang/String;

    .line 91
    const-string v0, "folio"

    invoke-static {v0, p2}, Lcom/zinio/mobile/android/a/a/d;->a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->q:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->s:Ljava/util/List;

    goto/16 :goto_0

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->s:Ljava/util/List;

    .line 99
    :cond_6
    new-instance v0, Lcom/zinio/mobile/android/a/a/i;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/d;->n:Ljava/lang/String;

    iget v2, p0, Lcom/zinio/mobile/android/a/a/d;->o:I

    iget-object v3, p0, Lcom/zinio/mobile/android/a/a/d;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/zinio/mobile/android/a/a/d;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/zinio/mobile/android/a/a/d;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/zinio/mobile/android/a/a/d;->s:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/zinio/mobile/android/a/a/i;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 103
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/d;->l:Ljava/util/Map;

    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/d;->m:Lcom/zinio/mobile/android/a/a/p;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 107
    :cond_7
    const-string v0, "blurb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    iput-boolean p3, p0, Lcom/zinio/mobile/android/a/a/d;->f:Z

    .line 110
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/d;->f:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/d;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 114
    :cond_8
    const-string v0, "author"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iput-boolean p3, p0, Lcom/zinio/mobile/android/a/a/d;->g:Z

    goto/16 :goto_0
.end method
