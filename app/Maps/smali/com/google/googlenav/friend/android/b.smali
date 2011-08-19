.class Lcom/google/googlenav/friend/android/b;
.super Lcom/google/googlenav/friend/android/i;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/friend/android/b;->a:Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/friend/android/i;-><init>(Lcom/google/googlenav/friend/android/w;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
