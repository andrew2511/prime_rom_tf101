.class public abstract Lcom/google/googlenav/friend/android/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/googlenav/friend/android/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;

    invoke-direct {v0}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/android/w;->a:Lcom/google/googlenav/friend/android/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/googlenav/friend/android/w;
    .locals 1

    sget-object v0, Lcom/google/googlenav/friend/android/w;->a:Lcom/google/googlenav/friend/android/w;

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/content/Intent;
.end method

.method public abstract a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
.end method

.method public abstract a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract a(Landroid/content/ContentResolver;Ljava/lang/String;ZLjava/lang/CharSequence;)Landroid/database/Cursor;
.end method

.method public a(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
.end method

.method public abstract b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
.end method
