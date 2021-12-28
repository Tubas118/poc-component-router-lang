import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { Child1Component } from "./components/child1/child1.component";
import { Child2Component } from "./components/child2/child2.component";
import { HomeComponent } from "./components/home/home.component";
import { PageNotFoundComponent } from "./components/page-not-found/page-not-found.component";

const routes: Routes = [
  { path: 'poc-home/child-1', component: Child1Component },
  { path: 'poc-home/child-2', component: Child2Component },
  { path: 'poc-home/404', component: PageNotFoundComponent },
  { path: 'poc-home', component: HomeComponent },
  { path: '', redirectTo: 'poc-home', pathMatch: 'full' },
  { path: '**', redirectTo: 'poc-home/404', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes, { useHash: true })],
  exports: [RouterModule]
})
export class AppRoutingModule { }