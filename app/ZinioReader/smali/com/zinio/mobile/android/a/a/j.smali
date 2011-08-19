.class public final Lcom/zinio/mobile/android/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:D

.field private static b:Ljava/util/HashMap;

.field private static final t:Lcom/zinio/mobile/android/a/a/m;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:J

.field private j:I

.field private k:I

.field private l:Lcom/zinio/mobile/android/a/b/t;

.field private m:Lcom/zinio/mobile/android/a/a/t;

.field private n:Lcom/zinio/mobile/android/a/a/y;

.field private o:Lcom/zinio/mobile/android/a/a/ab;

.field private p:Lcom/zinio/mobile/android/a/a;

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide v0, 0x3fb999999999999aL

    sput-wide v0, Lcom/zinio/mobile/android/a/a/j;->a:D

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/a/j;->b:Ljava/util/HashMap;

    .line 62
    new-instance v0, Lcom/zinio/mobile/android/a/a/m;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/a/m;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/a/j;->t:Lcom/zinio/mobile/android/a/a/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/b/t;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/zinio/mobile/android/a/a/j;->g:Z

    .line 46
    iput-wide v3, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    .line 47
    iput-wide v3, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    .line 48
    iput v1, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    .line 49
    iput v1, p0, Lcom/zinio/mobile/android/a/a/j;->k:I

    .line 51
    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    .line 52
    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    .line 53
    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    .line 54
    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    .line 55
    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    .line 57
    iput-boolean v2, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    .line 66
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/zinio/mobile/android/a/a/j;->d:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/zinio/mobile/android/a/a/j;->f:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    .line 72
    new-instance v0, Lcom/zinio/mobile/android/a/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    .line 74
    sget-object v0, Lcom/zinio/mobile/android/a/a/j;->t:Lcom/zinio/mobile/android/a/a/m;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/m;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 75
    return-void
.end method

.method private X()V
    .locals 2

    .prologue
    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    .line 1171
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/a/b;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/b;

    .line 1173
    invoke-interface {p0}, Lcom/zinio/mobile/android/a/a/b;->e_()V

    goto :goto_0

    .line 1175
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/b/t;)Lcom/zinio/mobile/android/a/a/j;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p4}, Lcom/zinio/mobile/android/a/b/t;->c()Ljava/lang/String;

    move-result-object v6

    .line 100
    sget-object v0, Lcom/zinio/mobile/android/a/a/j;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/j;

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/zinio/mobile/android/a/a/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/a/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/b/t;)V

    .line 103
    sget-object v1, Lcom/zinio/mobile/android/a/a/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iput-object p4, v0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    .line 107
    const/4 v1, -0x1

    iput v1, v0, Lcom/zinio/mobile/android/a/a/j;->j:I

    .line 110
    iget-object v1, v0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 111
    iget-object v1, v0, Lcom/zinio/mobile/android/a/a/j;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 112
    iget-object v1, v0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 113
    iget-object v1, v0, Lcom/zinio/mobile/android/a/a/j;->f:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/zinio/mobile/android/c;->a(Z)V

    goto :goto_0
.end method

.method protected static b(Lcom/zinio/mobile/android/a/a/x;)Z
    .locals 2
    .parameter

    .prologue
    .line 1125
    invoke-interface {p0}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v0

    .line 1126
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 2
    .parameter

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/a/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/v;

    .line 1138
    invoke-interface {p0, p1}, Lcom/zinio/mobile/android/a/a/v;->a(Lcom/zinio/mobile/android/a/a/x;)V

    goto :goto_0

    .line 1140
    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/a/v;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/v;

    .line 1148
    invoke-interface {v0}, Lcom/zinio/mobile/android/a/a/v;->b()V

    goto :goto_0

    .line 1150
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/a/ad;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/ad;

    invoke-interface {p0}, Lcom/zinio/mobile/android/a/a/ad;->a()V

    goto :goto_1

    .line 1153
    :cond_1
    return-void
.end method

.method private j(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1130
    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/a/a/j;->e(I)Lcom/zinio/mobile/android/a/a/k;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 1132
    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C()Ljava/util/Date;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/t;->a()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 3

    .prologue
    .line 679
    const-string v0, "MMM \'\'yy"

    .line 681
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 682
    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/b/t;->a()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 690
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .line 689
    :goto_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/t;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 687
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/t;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/b/t;->d()Z

    move-result v0

    return v0
.end method

.method public final G()Ljava/util/List;
    .locals 2

    .prologue
    .line 742
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/ab;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 744
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 745
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final H()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 791
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->Q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/ab;->b()Ljava/util/List;

    move-result-object v1

    .line 793
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->K()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/i;

    .line 796
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 811
    :goto_0
    return v0

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 802
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/a/a/j;->j(I)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/i;

    .line 804
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    .line 805
    goto :goto_0

    .line 811
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final I()Ljava/util/List;
    .locals 6

    .prologue
    .line 818
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/ab;->b()Ljava/util/List;

    move-result-object v2

    .line 822
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->K()Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/a/a/i;

    .line 824
    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 825
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 830
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/a/a/j;->j(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/i;

    .line 832
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 838
    :cond_3
    return-object v1
.end method

.method public final J()Ljava/lang/String;
    .locals 2

    .prologue
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/a/a/j;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L()Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->l:Lcom/zinio/mobile/android/a/b/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    return v0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final O()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Q()Z
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final R()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1082
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/a/a/j;->b(J)V

    .line 1084
    iput-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    .line 1085
    iput-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    .line 1086
    iput-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    .line 1089
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a;->a()V

    .line 1090
    return-void
.end method

.method public final S()V
    .locals 1

    .prologue
    .line 1093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    .line 1094
    return-void
.end method

.method public final T()Z
    .locals 1

    .prologue
    .line 1653
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->r:Z

    return v0
.end method

.method public final U()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V()Z
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->n()Z

    move-result v0

    return v0
.end method

.method public final W()Z
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->o()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->e()Ljava/util/List;

    move-result-object v0

    .line 626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 627
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 628
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/k;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 633
    :goto_1
    return v0

    .line 627
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/z;)Lcom/zinio/mobile/android/a/a/i;
    .locals 5
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/z;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/ab;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/i;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/i;->b()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/p;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/ab;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->c()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ee4f8b588e368f1L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 353
    :cond_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zinio/mobile/android/a/a/y;->a(FFF)V

    .line 351
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->c()F

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/y;->f()F

    move-result v1

    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/y;->g()F

    move-result v2

    iget-object v3, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    const-class v4, Lcom/zinio/mobile/android/a/a/l;

    invoke-virtual {v3, v4}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/l;

    invoke-interface {p0, v0, v1, v2}, Lcom/zinio/mobile/android/a/a/l;->a(FFF)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a/y;->a(I)V

    .line 277
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    const-class v1, Lcom/zinio/mobile/android/a/a/l;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/l;

    invoke-interface {p0, p1}, Lcom/zinio/mobile/android/a/a/l;->a(I)V

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 955
    iput-wide p1, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    .line 956
    return-void
.end method

.method final declared-synchronized a(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    iget-wide v2, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1112
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    .line 1114
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    iget-wide v2, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1115
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    iput-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    .line 1118
    :cond_0
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1119
    invoke-direct {p0, p3}, Lcom/zinio/mobile/android/a/a/j;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    :cond_1
    monitor-exit p0

    return-void

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 1028
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 1030
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    .line 1031
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/a/j;->X()V

    .line 1035
    :cond_0
    return-void

    .line 1029
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/t;)V
    .locals 2
    .parameter

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    if-eqz v0, :cond_0

    .line 985
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    .line 986
    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/t;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    .line 987
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/a/j;->X()V

    .line 991
    :cond_0
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 2
    .parameter

    .prologue
    .line 1058
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource downloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1062
    invoke-static {p1}, Lcom/zinio/mobile/android/a/a/j;->b(Lcom/zinio/mobile/android/a/a/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    if-lez v0, :cond_0

    .line 1063
    iget v0, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    .line 1065
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/a/a/j;->t:Lcom/zinio/mobile/android/a/a/m;

    invoke-virtual {v0, p0, p1}, Lcom/zinio/mobile/android/a/a/m;->a(Lcom/zinio/mobile/android/a/a/j;Lcom/zinio/mobile/android/a/a/x;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/a/a/j;->c(Lcom/zinio/mobile/android/a/a/x;)V

    .line 1067
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/y;)V
    .locals 1
    .parameter

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/zinio/mobile/android/c;->a(Z)V

    .line 1008
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    .line 1009
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/zinio/mobile/android/a/a/j;->X()V

    .line 1013
    :cond_0
    return-void

    .line 1007
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 936
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->b(Ljava/lang/Class;)V

    .line 937
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 908
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->a(Ljava/lang/Object;)Z

    .line 909
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/zinio/mobile/android/a/a/j;->g:Z

    .line 167
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method final b(J)V
    .locals 4
    .parameter

    .prologue
    .line 1103
    iput-wide p1, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    .line 1104
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/a/a/j;->f(Z)V

    .line 1107
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->p:Lcom/zinio/mobile/android/a/a;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a;->b(Ljava/lang/Object;)V

    .line 923
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a/y;->a(Z)V

    .line 334
    return-void
.end method

.method public final b(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 306
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->e()Z

    move-result v0

    .line 307
    if-eq p1, v1, :cond_0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/zinio/mobile/android/a/a/j;->s:Z

    .line 389
    return-void
.end method

.method public final c(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 321
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->b()I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/y;->e()Z

    move-result v1

    .line 323
    if-eq p1, v0, :cond_0

    if-eqz v1, :cond_1

    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v2, :cond_1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)Ljava/util/List;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f00

    const/high16 v10, 0x4000

    .line 417
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/t;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zinio/mobile/android/a/a/k;

    .line 418
    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/y;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 419
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/k;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_0

    .line 451
    :goto_0
    return-object v1

    .line 420
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 423
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 425
    if-lez p1, :cond_2

    .line 426
    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/k;->d()Ljava/util/ArrayList;

    move-result-object v8

    .line 427
    if-eqz v8, :cond_2

    move v9, v12

    .line 428
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 429
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/zinio/mobile/android/a/a/g;

    move-object v6, v0

    .line 430
    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/g;->a()Landroid/graphics/RectF;

    move-result-object v1

    .line 431
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v10

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v10

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 433
    new-instance v1, Lcom/zinio/mobile/android/a/a/g;

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/g;->c()Lcom/zinio/mobile/android/a/a/n;

    move-result-object v5

    invoke-virtual {v6}, Lcom/zinio/mobile/android/a/a/g;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/zinio/mobile/android/a/a/g;-><init>(Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/a/n;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/t;->b()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/t;->e()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/k;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/k;->d()Ljava/util/ArrayList;

    move-result-object v8

    .line 440
    if-eqz v8, :cond_3

    move v9, v12

    .line 441
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 442
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/g;

    .line 443
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->a()Landroid/graphics/RectF;

    move-result-object v1

    .line 444
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v10

    add-float/2addr v3, v11

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v10

    add-float/2addr v5, v11

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 446
    new-instance v1, Lcom/zinio/mobile/android/a/a/g;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->c()Lcom/zinio/mobile/android/a/a/n;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/zinio/mobile/android/a/a/g;-><init>(Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/a/n;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    :cond_3
    move-object v1, v7

    .line 451
    goto/16 :goto_0
.end method

.method public final d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 879
    iput-boolean p1, p0, Lcom/zinio/mobile/android/a/a/j;->q:Z

    .line 880
    return-void
.end method

.method public final e(I)Lcom/zinio/mobile/android/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/k;

    return-object p0
.end method

.method public final e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1643
    iput-boolean p1, p0, Lcom/zinio/mobile/android/a/a/j;->r:Z

    .line 1644
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->g:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1668
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 1685
    :goto_0
    return v0

    .line 1670
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 1671
    goto :goto_0

    .line 1672
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 1673
    goto :goto_0

    .line 1674
    :cond_2
    check-cast p1, Lcom/zinio/mobile/android/a/a/j;

    .line 1675
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1676
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 1677
    goto :goto_0

    .line 1678
    :cond_3
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 1679
    goto :goto_0

    .line 1680
    :cond_4
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1681
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v2

    .line 1682
    goto :goto_0

    .line 1683
    :cond_5
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 1684
    goto :goto_0

    :cond_6
    move v0, v3

    .line 1685
    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    return-wide v0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a/t;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()D
    .locals 4

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 205
    const-wide/16 v0, 0x0

    .line 207
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/zinio/mobile/android/a/a/j;->h:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/a/a/t;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(I)I
    .locals 1
    .parameter

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public final h()J
    .locals 4

    .prologue
    .line 215
    invoke-static {p0}, Lcom/zinio/mobile/android/resources/a/a;->c(Lcom/zinio/mobile/android/a/a/j;)J

    move-result-wide v0

    .line 216
    iget-wide v2, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 217
    iput-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    .line 219
    :cond_0
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1658
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 1662
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 1663
    return v0

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final i(I)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput p1, p0, Lcom/zinio/mobile/android/a/a/j;->k:I

    .line 966
    return-void
.end method

.method public final i()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->g()D

    move-result-wide v2

    sub-double/2addr v0, v2

    sget-wide v2, Lcom/zinio/mobile/android/a/a/j;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    move v0, v5

    .line 237
    :goto_0
    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 239
    iget v1, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    if-ge v0, v1, :cond_1

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/zinio/mobile/android/resources/a/a;->d(Lcom/zinio/mobile/android/a/a/j;)I

    move-result v1

    iput v1, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    .line 244
    :cond_1
    iget v1, p0, Lcom/zinio/mobile/android/a/a/j;->j:I

    if-ne v1, v0, :cond_4

    move v0, v5

    .line 247
    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v4

    .line 227
    goto :goto_0

    :cond_4
    move v0, v4

    .line 244
    goto :goto_1
.end method

.method public final j()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 256
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 257
    sget-object v0, Lcom/zinio/mobile/android/a/a/j;->t:Lcom/zinio/mobile/android/a/a/m;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/a/a/m;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 260
    :cond_0
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/j;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->a()I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->b()I

    move-result v0

    return v0
.end method

.method public final m()F
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->c()F

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->e()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/y;->d()Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 380
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/y;->f()F

    move-result v1

    iget-object v2, p0, Lcom/zinio/mobile/android/a/a/j;->n:Lcom/zinio/mobile/android/a/a/y;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/y;->g()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/zinio/mobile/android/a/a/j;->a(FFF)V

    .line 382
    return-void
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/zinio/mobile/android/a/a/j;->s:Z

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->b()I

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/zinio/mobile/android/a/a/j;->k:I

    goto :goto_0
.end method

.method public final s()Ljava/util/List;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final t()Lcom/zinio/mobile/android/a/a/k;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->f()Lcom/zinio/mobile/android/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->k()Z

    move-result v0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->d()I

    move-result v0

    return v0
.end method

.method public final y()Ljava/util/List;
    .locals 3

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    if-eqz v1, :cond_1

    .line 588
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->o:Lcom/zinio/mobile/android/a/a/ab;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/ab;->b()Ljava/util/List;

    move-result-object v0

    .line 589
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/i;

    .line 591
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 595
    :cond_1
    return-object v0
.end method

.method public final z()Ljava/util/List;
    .locals 2

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 604
    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    if-eqz v1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/j;->m:Lcom/zinio/mobile/android/a/a/t;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/t;->h()Ljava/util/List;

    move-result-object v0

    .line 608
    :cond_0
    return-object v0
.end method
