.class public Lcom/zinio/mobile/android/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:Lcom/zinio/mobile/android/c/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;

.field private final g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:I

.field private l:Lcom/zinio/mobile/android/c/f;

.field private m:Lcom/zinio/mobile/android/c/g;

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/zinio/mobile/android/c/e;->k:Lcom/zinio/mobile/android/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->a:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->b:I

    .line 51
    const-string v0, "nUses"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->c:Ljava/lang/String;

    .line 52
    const-string v0, "bReviewed"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->d:Ljava/lang/String;

    .line 53
    const-string v0, "nReviewPrompts"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->e:Ljava/lang/String;

    .line 55
    const-string v0, "market_rating"

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->g:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/zinio/mobile/android/c/e;->h:I

    .line 57
    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    .line 58
    iput v1, p0, Lcom/zinio/mobile/android/c/e;->j:I

    .line 215
    iput-object v2, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 216
    iput-object v2, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    .line 217
    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->n:Z

    .line 218
    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 699
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 702
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 703
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 709
    :goto_0
    return-object v0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    const-class v1, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 709
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s@l7\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/zinio/mobile/android/c/f;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 647
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 648
    const-string v1, "com.zinio.mobile.android.users"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 653
    if-eqz p0, :cond_1

    .line 654
    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 658
    const-string v3, "username"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 659
    const-string v1, "password"

    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 660
    const-string v1, "profileId"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zinio/mobile/android/c/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    if-eqz v1, :cond_0

    .line 665
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 673
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 674
    return-void

    .line 668
    :cond_1
    const-string v1, "username"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 669
    const-string v1, "password"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 670
    const-string v1, "profileId"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/c/e;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->n:Z

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 714
    if-eqz p1, :cond_0

    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 719
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 996
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 997
    const-string v1, "com.zinio.mobile.android.users"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1001
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1003
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1004
    return-void
.end method

.method public static e()Lcom/zinio/mobile/android/c/e;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/zinio/mobile/android/c/e;->k:Lcom/zinio/mobile/android/c/e;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/zinio/mobile/android/c/e;

    invoke-direct {v0}, Lcom/zinio/mobile/android/c/e;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/c/e;->k:Lcom/zinio/mobile/android/c/e;

    .line 283
    :cond_0
    sget-object v0, Lcom/zinio/mobile/android/c/e;->k:Lcom/zinio/mobile/android/c/e;

    return-object v0
.end method

.method private static l()Lcom/zinio/mobile/android/c/f;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 583
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 584
    const-string v1, "com.zinio.mobile.android.users"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    const-string v1, "username"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    const-string v2, "password"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    const-string v3, "profileId"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 602
    invoke-static {v1}, Lcom/zinio/mobile/android/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 603
    invoke-static {v4}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-static {v3}, Lcom/zinio/mobile/android/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 609
    invoke-static {v4, v5}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/zinio/mobile/android/c/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 610
    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 611
    if-nez v7, :cond_3

    .line 612
    const-string v4, "be87df3bb6250592f3db0834133c93a2"

    invoke-static {v1, v4}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    const-string v5, "be87df3bb6250592f3db0834133c93a2"

    invoke-static {v3, v5}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-static {v4}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-static {v4, v2}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_2

    .line 622
    const/4 v1, 0x1

    .line 623
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zinio/mobile/android/c/e;->b(Ljava/lang/String;)V

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    .line 627
    :goto_0
    if-eqz v0, :cond_1

    .line 628
    new-instance v0, Lcom/zinio/mobile/android/c/f;

    invoke-direct {v0, v4, v3, v2}, Lcom/zinio/mobile/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-eqz v1, :cond_0

    .line 630
    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/f;)V

    .line 635
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v8

    goto :goto_1

    :cond_2
    move v1, v9

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_0

    :cond_3
    move-object v0, v7

    move v1, v9

    move-object v2, v6

    move-object v3, v5

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const-string v0, "initSharedPreferences on entry nUses:%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/zinio/mobile/android/c/e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 159
    const-string v1, "market_rating"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    .line 160
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    const-string v1, "nUses"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->h:I

    .line 161
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    const-string v1, "bReviewed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    .line 162
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    const-string v1, "nReviewPrompts"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->j:I

    .line 165
    iget v0, p0, Lcom/zinio/mobile/android/c/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->h:I

    .line 166
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nUses"

    iget v2, p0, Lcom/zinio/mobile/android/c/e;->h:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const-string v0, "initSharedPreferences stored new nUses:%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/zinio/mobile/android/c/e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const-string v0, "checkUserReview bReviewed:%s, nUses:%d, NREVIEWTHRESHOLD:%d, mod:%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    if-eqz v2, :cond_0

    const-string v2, "yes"

    :goto_0
    aput-object v2, v1, v4

    iget v2, p0, Lcom/zinio/mobile/android/c/e;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/zinio/mobile/android/c/e;->h:I

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    iget-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    if-eqz v0, :cond_1

    .line 89
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move v0, v4

    .line 135
    :goto_1
    if-eqz v0, :cond_6

    .line 136
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 138
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    :goto_2
    return-void

    .line 80
    :cond_0
    const-string v2, "no"

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/zinio/mobile/android/c/e;->h:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_2

    .line 94
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move v0, v4

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget v0, p0, Lcom/zinio/mobile/android/c/e;->j:I

    if-lt v0, v6, :cond_3

    .line 99
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move v0, v4

    .line 101
    goto :goto_1

    .line 104
    :cond_3
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 108
    :cond_4
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move v0, v4

    .line 110
    goto :goto_1

    .line 115
    :cond_5
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    iget-object v1, v1, Lcom/zinio/mobile/android/c/g;->d:Ljava/lang/String;

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 128
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move v0, v4

    .line 130
    goto :goto_1

    .line 140
    :cond_6
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_7
    move v0, v5

    goto/16 :goto_1
.end method

.method public final a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 299
    :try_start_0
    invoke-static {p2, p3}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/a/k;
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/k;->a()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 323
    new-instance v1, Lcom/zinio/mobile/android/c/f;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/k;->e()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/zinio/mobile/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 327
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    invoke-static {v1}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/f;)V

    .line 329
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 305
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    const-string v1, "SYSTEM_NOT_AVAILABLE"

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/k;->a()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSTEM_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    invoke-virtual {p1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAX_USER_DEVICES_REACHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 339
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 492
    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zinio/mobile/android/b/a/f;
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Lcom/zinio/mobile/android/b/a/f;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 509
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 512
    new-instance v1, Lcom/zinio/mobile/android/c/f;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zinio/mobile/android/c/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p4, v2}, Lcom/zinio/mobile/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 516
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v1

    .line 517
    const-string v2, "com.zinio.mobile.android.users"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 520
    invoke-static {p2, v0}, Lcom/zinio/mobile/android/c/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/f;)V

    .line 534
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 499
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_0

    .line 502
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {v1}, Lcom/zinio/mobile/android/b/a/f;->a()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/zinio/mobile/android/b/a/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SYSTEM_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 531
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    move-object v0, p4

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/zinio/mobile/android/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/zinio/mobile/android/b/a/e;
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/e;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 415
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    new-instance v1, Lcom/zinio/mobile/android/c/f;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/e;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v1, p4, p5, v2, v0}, Lcom/zinio/mobile/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 421
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/f;)V

    .line 433
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 405
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    goto :goto_0

    .line 408
    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/e;->a()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSTEM_NOT_AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 430
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zinio/mobile/android/c/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zinio/mobile/android/c/d;-><init>(Lcom/zinio/mobile/android/c/e;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 372
    return-object v0
.end method

.method public final b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/zinio/mobile/android/c/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/c/b;-><init>(Lcom/zinio/mobile/android/c/e;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 561
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 563
    return-object v6
.end method

.method public final b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/Thread;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/zinio/mobile/android/c/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/zinio/mobile/android/c/c;-><init>(Lcom/zinio/mobile/android/c/e;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 469
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 471
    return-object v9
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 180
    const-string v1, "market_rating"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    .line 181
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    const-string v1, "bReviewed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    .line 183
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bReviewed"

    iget-boolean v2, p0, Lcom/zinio/mobile/android/c/e;->i:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    return-void
.end method

.method public final b(Landroid/os/Handler;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 750
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->l()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_0

    .line 753
    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 755
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    .line 760
    :goto_0
    return v0

    .line 759
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 760
    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 193
    const-string v1, "market_rating"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    .line 194
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    const-string v1, "nReviewPrompts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->j:I

    .line 195
    iget v0, p0, Lcom/zinio/mobile/android/c/e;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zinio/mobile/android/c/e;->j:I

    .line 196
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nReviewPrompts"

    iget v2, p0, Lcom/zinio/mobile/android/c/e;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method public final c(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 773
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->l()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final c(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 798
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    .line 799
    const-string v1, "com.zinio.mobile.android.users"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 803
    invoke-static {p2, p3}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zinio/mobile/android/c/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    if-nez v1, :cond_3

    .line 809
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "be87df3bb6250592f3db0834133c93a2"

    invoke-static {v1, v2}, Lcom/zinio/mobile/android/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 812
    invoke-static {p2, p3}, Lcom/zinio/mobile/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_2

    .line 817
    invoke-static {v1}, Lcom/zinio/mobile/android/c/e;->b(Ljava/lang/String;)V

    move-object v1, v0

    move v0, v4

    .line 821
    :goto_0
    if-eqz v1, :cond_1

    .line 822
    if-eqz v0, :cond_0

    .line 824
    const-string v0, "be87df3bb6250592f3db0834133c93a2"

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/e/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    :goto_1
    new-instance v1, Lcom/zinio/mobile/android/c/f;

    invoke-direct {v1, p2, p3, v0}, Lcom/zinio/mobile/android/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 830
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/f;)V

    .line 832
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v4

    .line 837
    :goto_2
    return v0

    .line 826
    :cond_0
    invoke-static {v1}, Lcom/zinio/mobile/android/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 836
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v3

    .line 837
    goto :goto_2

    :cond_2
    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    iget-object v0, v0, Lcom/zinio/mobile/android/c/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    invoke-static {}, Lcom/zinio/mobile/android/App;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 570
    invoke-static {v0}, Lcom/zinio/mobile/android/c/e;->a(Lcom/zinio/mobile/android/c/f;)V

    .line 571
    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 573
    invoke-static {}, Lcom/zinio/mobile/android/d/a;->a()V

    .line 574
    return-void
.end method

.method public final g()Lcom/zinio/mobile/android/c/f;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    if-nez v0, :cond_0

    .line 731
    const-class v0, Lcom/zinio/mobile/android/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 732
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->l()Lcom/zinio/mobile/android/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->l:Lcom/zinio/mobile/android/c/f;

    return-object v0
.end method

.method public final h()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->n:Z

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    .line 850
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zinio/mobile/android/c/a;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/c/a;-><init>(Lcom/zinio/mobile/android/c/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 857
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 859
    return-object v0
.end method

.method public final i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 869
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Lcom/zinio/mobile/android/c/g;

    invoke-direct {v0}, Lcom/zinio/mobile/android/c/g;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    .line 874
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zinio/mobile/android/b/b;->a()Lcom/zinio/mobile/android/b/a/g;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_3

    .line 877
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    const-string v2, "APP_VERSION_NOT_SUPPORTED"

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/zinio/mobile/android/c/g;->f:Z

    .line 880
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    .line 882
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 883
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zinio/mobile/android/c/g;->e:Ljava/lang/String;

    .line 887
    :goto_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 888
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zinio/mobile/android/c/g;->b:Ljava/lang/String;

    .line 892
    :goto_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 893
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zinio/mobile/android/c/g;->c:Ljava/lang/String;

    .line 898
    :goto_2
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 899
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zinio/mobile/android/c/g;->a:Ljava/lang/String;

    .line 904
    :goto_3
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 905
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zinio/mobile/android/c/g;->d:Ljava/lang/String;

    .line 910
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->i()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 911
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_2

    .line 913
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/a/g;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/c/f;->a(Ljava/util/HashMap;)V

    .line 919
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zinio/mobile/android/c/g;->g:Ljava/lang/String;

    .line 931
    :cond_3
    :goto_5
    return-void

    .line 885
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->o:Z
    :try_end_0
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 922
    :catch_0
    move-exception v0

    .line 923
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->printStackTrace()V

    .line 924
    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zinio/mobile/android/b/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 925
    iget-object v1, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    const-string v2, "APP_VERSION_NOT_SUPPORTED"

    invoke-virtual {v0}, Lcom/zinio/mobile/android/b/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/zinio/mobile/android/c/g;->f:Z

    .line 927
    invoke-static {v0}, Lcom/zinio/mobile/android/b/b;->a(Lcom/zinio/mobile/android/b/g;)V

    .line 929
    :cond_5
    iput-boolean v4, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    goto :goto_5

    .line 890
    :cond_6
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    goto :goto_1

    .line 896
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    goto :goto_2

    .line 901
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    goto :goto_3

    .line 916
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->o:Z
    :try_end_1
    .catch Lcom/zinio/mobile/android/b/g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public final j()Lcom/zinio/mobile/android/c/g;
    .locals 2

    .prologue
    .line 937
    :goto_0
    iget-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->n:Z

    if-eqz v0, :cond_0

    .line 939
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    if-nez v0, :cond_1

    .line 945
    new-instance v0, Lcom/zinio/mobile/android/c/g;

    invoke-direct {v0}, Lcom/zinio/mobile/android/c/g;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/c/e;->m:Lcom/zinio/mobile/android/c/g;

    return-object v0
.end method

.method public final k()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 964
    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->l()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 985
    :goto_0
    return v0

    .line 968
    :cond_0
    iget-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->n:Z

    if-ne v0, v2, :cond_1

    move v0, v3

    .line 969
    goto :goto_0

    .line 972
    :cond_1
    iget-boolean v0, p0, Lcom/zinio/mobile/android/c/e;->o:Z

    if-nez v0, :cond_2

    move v0, v2

    .line 973
    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v0

    iget-object v0, v0, Lcom/zinio/mobile/android/c/g;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    .line 977
    goto :goto_0

    .line 980
    :cond_3
    invoke-virtual {p0}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v0

    iget-object v0, v0, Lcom/zinio/mobile/android/c/g;->g:Ljava/lang/String;

    invoke-static {}, Lcom/zinio/mobile/android/DeviceInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 982
    goto :goto_0

    :cond_4
    move v0, v2

    .line 985
    goto :goto_0
.end method
