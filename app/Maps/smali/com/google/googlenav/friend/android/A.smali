.class public Lcom/google/googlenav/friend/android/A;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3a98

    sput-wide v0, Lcom/google/googlenav/friend/android/A;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 2

    const-wide/32 v0, 0x317040

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;)J
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->o(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v3}, Lo/aX;->a(ZZ)J

    move-result-wide v1

    invoke-static {v3, v3}, Lo/aX;->a(ZZ)J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lo/aX;->a(ZJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/app/Service;)Lcom/google/googlenav/login/j;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0, v1}, Lcom/google/googlenav/login/b;->a(Landroid/content/Context;LaU/a;)Lcom/google/googlenav/login/j;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/googlenav/friend/android/a;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/android/a;-><init>(Landroid/app/Service;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    invoke-static {v1, v1, v1}, Lo/aF;->b(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lo/aF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->s()V

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->p()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/login/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)Lf/h;
    .locals 6

    const-wide v4, 0x412e848000000000L

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lf/h;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lo/aF;->p()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Z)V

    sget-boolean v1, Lcom/google/googlenav/friend/android/A;->b:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->q(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/friend/android/A;->b:Z

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;IZ)V
    .locals 3

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was_previous_stationary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "privacy_check_time_storage"

    invoke-static {p0, v0, p1, p2}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;JZ)V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {}, Lo/aX;->g()V

    invoke-static {}, Lo/aX;->h()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "network"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "network"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/google/googlenav/android/Z;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v2, "gps"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gps"

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    :cond_1
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "passive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_checkin_cid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_0
    invoke-static {v1, p2}, Lo/aN;->a(ZLjava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friend_service_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;I)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "friend_service"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was_previous_stationary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;)Lf/h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;)Lf/h;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lo/bg;->a(Lf/h;JLf/h;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()V
    .locals 1

    :goto_0
    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    invoke-virtual {v0}, Lak/h;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_time_storage"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected static b(Landroid/content/Context;Landroid/location/Location;)V
    .locals 6

    const-wide v4, 0x412e848000000000L

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "last_location_provider"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "last_location_provider"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_location_lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_location_lon"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_location_accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_location_time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_checkin_is_home"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "friend_service"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "friend_service_enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;)Lf/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/location/Location;)Lf/h;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lo/bg;->a(Lf/h;JLf/h;)Z

    move-result v0

    goto :goto_0
.end method

.method private static c()J
    .locals 2

    invoke-static {}, Lo/aX;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "friend_search_time_storage"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method protected static c(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "was_previous_moving"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lo/ce;->e()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->q(Landroid/content/Context;)V

    return-void
.end method

.method private static d(Landroid/content/Context;J)V
    .locals 1

    invoke-static {}, Lo/aX;->i()Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;JZ)V

    return-void
.end method

.method protected static d(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_currently_moving"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lz/a;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lo/ce;->g()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->r(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lo/ce;->f()V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->r(Landroid/content/Context;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)J
    .locals 2

    const-string v0, "privacy_check_time_storage"

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->g(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)J
    .locals 4

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "friend_search_time_storage"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Landroid/content/Context;)J
    .locals 4

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "update_time_storage"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_checkin_cid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "friend_service"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_checkin_is_home"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static m(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "friend_service"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "was_previous_moving"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static n(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_currently_moving"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static o(Landroid/content/Context;)Landroid/location/Location;
    .locals 9

    const/4 v2, 0x0

    const-wide v7, 0x412e848000000000L

    const-wide/16 v5, 0x0

    const-string v0, "friend_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_location_provider"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string v1, "last_location_lat"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    const-string v1, "last_location_lon"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    const-string v1, "last_location_accuracy"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/location/Location;->setAccuracy(F)V

    const-string v1, "last_location_time"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v3, v0, v5

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->j(Landroid/content/Context;)J

    move-result-wide v0

    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/google/googlenav/friend/android/A;->c()J

    move-result-wide v0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/AccelerometerObserverService;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/google/googlenav/friend/android/A;->d(Landroid/content/Context;J)V

    return-void
.end method

.method public static q(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->p(Landroid/content/Context;)V

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/google/googlenav/friend/android/BackgroundFriendService;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static r(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/googlenav/appwidget/hotpot/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/googlenav/friend/android/A;->t(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AndroidState"

    const-string v1, "TERMS_ACCEPTED_SETTING"

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BUZZ_TERMS_ACCEPTED_SETTING"

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/friend/android/A;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static t(Landroid/content/Context;)V
    .locals 4

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/googlenav/friend/android/LocationFriendService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method
