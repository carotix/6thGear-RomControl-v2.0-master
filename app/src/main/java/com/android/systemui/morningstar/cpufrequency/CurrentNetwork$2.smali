.class Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;
.super Landroid/content/BroadcastReceiver;
.source "CurrentNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;


# direct methods
.method constructor <init>(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;

    iget-object v3, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;

    # invokes: Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->getCurrentSSID()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->access$100(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;

    iget-object v3, p0, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;

    # invokes: Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->getCarrier()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->access$200(Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/morningstar/cpufrequency/CurrentNetwork;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
