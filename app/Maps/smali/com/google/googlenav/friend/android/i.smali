.class public abstract Lcom/google/googlenav/friend/android/i;
.super Landroid/database/CursorWrapper;


# instance fields
.field protected b:Landroid/database/Cursor;

.field final synthetic c:Lcom/google/googlenav/friend/android/w;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/w;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/i;->c:Lcom/google/googlenav/friend/android/w;

    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Lcom/google/googlenav/friend/android/i;->b:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/android/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
