.class Lcom/google/googlenav/ui/android/A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bK;

.field final synthetic b:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bK;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/A;->b:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/A;->a:Lcom/google/googlenav/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/A;->b:Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/A;->a:Lcom/google/googlenav/bK;

    invoke-virtual {v1}, Lcom/google/googlenav/bK;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "loadMoreInfoUrl"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
