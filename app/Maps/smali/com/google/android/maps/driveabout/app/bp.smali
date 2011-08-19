.class public Lcom/google/android/maps/driveabout/app/bp;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "V"

    invoke-static {v1, p3}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/as;->a()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/as;->b()V

    goto :goto_0

    :cond_2
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/as;->b()V

    goto :goto_0

    :cond_4
    const v1, 0x7f0b00b5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/app/bp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p4}, Lcom/google/android/maps/driveabout/app/as;->b()V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, LF/u;

    invoke-direct {v0, p0, v5, v5, v5}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/H;

    invoke-direct {v1, p3, p4, v0, v2}, Lcom/google/android/maps/driveabout/app/H;-><init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;LF/u;Ljava/util/ArrayList;)V

    invoke-virtual {p3, p0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dc;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/List;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/bp;->b(Ljava/util/List;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V

    return-void
.end method

.method private static b(Ljava/util/List;Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/as;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [LF/u;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_0

    new-instance v3, LF/u;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v4, v4}, LF/u;-><init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/app/G;

    invoke-direct {v2, p2}, Lcom/google/android/maps/driveabout/app/G;-><init>(Lcom/google/android/maps/driveabout/app/as;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/maps/driveabout/app/bo;->a([LF/u;ILcom/google/android/maps/driveabout/app/bf;)V

    return-void
.end method
